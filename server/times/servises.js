const { DateTime } = require("luxon")
const axios = require('axios');
const dayTimes = {};
const hebrewDate = { hebrew: "" };
const weekTimes = {};
const prayersTimes = {}

async function getTimesEveryMidnight() {
    try {
        const dateTime = DateTime.now();
        let data  = await getDayTimes();
        copyToGlobalVar(data, dayTimes);
        const tommorow = dateTime.plus({ days: 1 }).toISODate();
        const midnight = DateTime.fromISO(tommorow);
        setTimeout(getTimesEveryMidnight, midnight - dateTime);// get the times every midnight 
    } catch (err) { console.log(err) }
}

async function getWeekTimesEverySunday() {
    try {
        const dateTime = DateTime.now();
        let nextSunday = dateTime.plus({ days: 7 - dateTime.weekday }).toISODate();
        nextSunday = DateTime.fromISO(nextSunday);
        let data = await getWeekTimes(dateTime.toISODate(), nextSunday);
        copyToGlobalVar(data, weekTimes);
        data =await getPrayersTimes()
        copyToGlobalVar(data, prayersTimes)
        setTimeout(getWeekTimesEverySunday, nextSunday - dateTime);// get the times every midnight
        console.log(weekTimes);
    } catch (err) { console.log(err); }
}

async function getHebrewDateEverySunset() {
    try {
        hebrewDate.hebrew = await getHebrewDate();
        const data = await getPrayersTimes();
        copyToGlobalVar(data, prayersTimes)
        const dateTime = DateTime.now();
        
        let sunset = dayTimes.sunset || (await getDayTimes()).sunset; // if timesData.sunset is undefined, getTimes() will be called
        sunset = DateTime.fromISO(sunset);
        setTimeout(getHebrewDateEverySunset, sunset - dateTime);// get the times every midnight
    } catch (err) { console.log(err); }
}

async function getDayTimes() {
    try {
        const dateTime = DateTime.now();
        const date = dateTime.toISODate();
        const { data: { times } } = await axios.get(`https://www.hebcal.com/zmanim?cfg=json&geonameid=3448439&date=${date}`)
        return times;
    } catch (err) { console.log(err); }
}

async function getPrayersTimes() {
    return {hol: { shahrit: dayTimes.sunrise, minha: dayTimes.sunset, arvit: dayTimes.tzeit_72 },
        shabat: {shahrit: DateTime.fromISO(dayTimes.sunrise).plus({hours: 1}), minha: DateTime.fromISO(dayTimes.sunset).minus({hours:1}), arvit: dayTimes.tzeit_72}};
}

async function getWeekTimes(now, nextSunday) {

    const { data: { items } } = await axios.get(`https://www.hebcal.com/hebcal?v=1&cfg=json&maj=on&min=on&nx=on&year=now&month=x&start=${now}&end=${nextSunday}&ss=on&mf=on&c=on&geoname=Bnei Brakgeonameid=295514&M=on&s=on`);
    return items;
}

async function getHebrewDate() {
    try {
        const dateTime = DateTime.now();
        const date = dateTime.toISODate();
        const { data } = await axios.get(`https://www.hebcal.com/converter?cfg=json&date=${date}&g2h=1${await isAfterSunset() && '&gs=on'}`)
        return data.hebrew;
    } catch (err) { console.log(err); }
}



async function isAfterSunset() {
    const sunset = dayTimes.sunset || (await getDayTimes()).sunset; // if timesData.sunset is undefined, getTimes() will be called
    const dateTime = DateTime.now();
    const isAfterSunset = dateTime > DateTime.fromISO(sunset);// if it's after sunset, we need to add gs=on to the url
    return isAfterSunset;
}

// 
// This code copies all the properties of the obj object to the global object.
// This is done to make the properties of obj can be export to another file.
//and not overwrite the object itself.

function copyToGlobalVar(obj, global) {
    Object.keys(obj).forEach(key => {
        global[key] = obj[key];
    })// add the times to the timesData without overwriting the timesData object itself (so that the reference to timesData in the router doesn't change)
}

getTimesEveryMidnight();
getHebrewDateEverySunset();
getWeekTimesEverySunday();
module.exports = { dayTimes, hebrewDate, weekTimes, prayersTimes, getDayTimes, getHebrewDate, getPrayersTimes, getWeekTimes, getWeekTimesEverySunday }

