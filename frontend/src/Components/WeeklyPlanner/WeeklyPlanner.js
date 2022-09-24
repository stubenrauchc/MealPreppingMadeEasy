import React from "react";
import Navigator from "../navigation/Navigator";
import { Link } from "react-router-dom";
// import { useState } from "react";
import yellowdot from "../../images/yellowdot.png";
import bluedot from "../../images/bluedot.png";
import greendot from "../../images/greendot.png";
import purpledot from "../../images/purpledot.png";
import orangedot from "../../images/orangedot.png";
import pinkdot from "../../images/pinkdot.png";
import reddot from "../../images/reddot.png";
import "./weeklyplanner.css";
// import MovingText from "react-moving-text";
import Accordion from "react-bootstrap/Accordion";

export default function WeeklyPlanner() {
  return (
    <div  >
      <Navigator/>
      <div >
        {/* <MovingText
          type="effect3D"
          duration="1000ms"
          delay="0s"
          direction="normal"
          timing="ease"
          iteration="infinite"
          fillMode="none"
        >
         </MovingText> */}
          <h3 id="weeklyplanner"> Weekly Planner</h3>
       
        </div>
      <div className="weeklyplanner-container" >
        <Accordion defaultActiveKey="1">
          <Accordion.Item>
            <Accordion.Header
              style={{ backgroundColor: "#343a41" }}
              targetId="monday"
            >
              <img src={yellowdot} alt="large yellow dot" />
              &nbsp; &nbsp; Monday
            </Accordion.Header>
            <Accordion.Body accordionId="monday">
              <ul className='weeklyplanner-accordion-links'>
                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "Monday", meal: "breakfast" },
                  }}
                >
                  Breakfast
                </Link>
                <br />

                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "Monday", meal: "lunch" },
                  }}
                >
                  Lunch
                </Link>
                <br />
                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "Monday", meal: "dinner" },
                  }}
                >
                  Dinner
                </Link>
              </ul>
            </Accordion.Body>
          </Accordion.Item>
        </Accordion>
        <Accordion defaultActiveKey="2">
          <Accordion.Item>
            <Accordion.Header
              style={{ backgroundColor: "#343a41" }}
              targetId="tuesday"
            >
              <img src={orangedot} alt="large orange dot" />
              &nbsp; &nbsp; Tuesday
            </Accordion.Header>
            <Accordion.Body accordionId="tuesday">
              <ul className='weeklyplanner-accordion-links'>
                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "Tuesday", meal: "breakfast" },
                  }}
                >
                  Breakfast
                </Link>
                <br />

                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "Tuesday", meal: "lunch" },
                  }}
                >
                  Lunch
                </Link>
                <br />
                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "Tuesday", meal: "dinner" },
                  }}
                >
                  Dinner
                </Link>
              </ul>
            </Accordion.Body>
          </Accordion.Item>
        </Accordion>
        <Accordion defaultActiveKey="3">
          <Accordion.Item>
            <Accordion.Header
              style={{ backgroundColor: "#343a41" }}
              targetId="wednesday"
            >
              <img src={greendot} alt="large green dot" />
              &nbsp; &nbsp; Wednesday
            </Accordion.Header>
            <Accordion.Body accordionId="wednesday">
              <ul className='weeklyplanner-accordion-links'>
                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "Wednesday", meal: "breakfast" },
                  }}
                >
                  Breakfast
                </Link>
                <br />

                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "Wednesday", meal: "lunch" },
                  }}
                >
                  Lunch
                </Link>
                <br />
                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "Wednesday", meal: "dinner" },
                  }}
                >
                  Dinner
                </Link>
              </ul>
            </Accordion.Body>
          </Accordion.Item>
        </Accordion>
        <Accordion defaultActiveKey="4">
          <Accordion.Item>
            <Accordion.Header
              style={{ backgroundColor: "#343a41" }}
              targetId="thursday"
            >
              <img src={bluedot} alt="large blue dot" />
              &nbsp; &nbsp; Thursday
            </Accordion.Header>
            <Accordion.Body accordionId="thursday">
              <ul className='weeklyplanner-accordion-links'>
                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "Thursday", meal: "breakfast" },
                  }}
                >
                  Breakfast
                </Link>
                <br />

                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "Thursday", meal: "lunch" },
                  }}
                >
                  Lunch
                </Link>
                <br />
                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "Thursday", meal: "dinner" },
                  }}
                >
                  Dinner
                </Link>
              </ul>
            </Accordion.Body>
          </Accordion.Item>
        </Accordion>
        <Accordion defaultActiveKey="5">
          <Accordion.Item>
            <Accordion.Header
              style={{ backgroundColor: "#343a41" }}
              targetId="friday"
            >
              <img src={purpledot} alt="large purple dot" />
              &nbsp; &nbsp; Friday
            </Accordion.Header>
            <Accordion.Body accordionId="friday">
              <ul className='weeklyplanner-accordion-links'>
                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "friday", meal: "breakfast" },
                  }}
                >
                  Breakfast
                </Link>
                <br />

                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "friday", meal: "lunch" },
                  }}
                >
                  Lunch
                </Link>
                <br />
                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "friday", meal: "dinner" },
                  }}
                >
                  Dinner
                </Link>
              </ul>
            </Accordion.Body>
          </Accordion.Item>
        </Accordion>
        <Accordion defaultActiveKey="6">
          <Accordion.Item>
            <Accordion.Header
              style={{ backgroundColor: "#343a41" }}
              targetId="saturday"
            >
              <img src={pinkdot} alt="large pink dot"  />
              &nbsp; &nbsp; Saturday
            </Accordion.Header>
            <Accordion.Body accordionId="saturday">
              <ul className='weeklyplanner-accordion-links'>
                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "saturday", meal: "breakfast" },
                  }}
                >
                  Breakfast
                </Link>
                <br />

                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "saturday", meal: "lunch" },
                  }}
                >
                  Lunch
                </Link>
                <br />
                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "saturday", meal: "dinner" },
                  }}
                >
                  Dinner
                </Link>
              </ul>
            </Accordion.Body>
          </Accordion.Item>
        </Accordion>
        <Accordion defaultActiveKey="7">
          <Accordion.Item>
            <Accordion.Header
              style={{ backgroundColor: "#343a41" }}
              targetId="sunday"
            >
              <img src={reddot} alt="large red dot" />
              &nbsp; &nbsp; Sunday
            </Accordion.Header>
            <Accordion.Body accordionId="sunday">
              <ul className='weeklyplanner-accordion-links'>
                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "sunday", meal: "breakfast" },
                  }}
                >
                  Breakfast
                </Link>
                <br />

                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "sunday", meal: "lunch" },
                  }}
                >
                  Lunch
                </Link>
                <br />
                <Link
                  style={{ textDecoration: "none" }}
                  to={{
                    pathname: "/day",
                    state: { day: "sunday", meal: "dinner" },
                  }}
                >
                  Dinner
                </Link>
              </ul>
            </Accordion.Body>
          </Accordion.Item>
        </Accordion>
      </div>
      {/* <div className="calender">
        <h1 className="header">Meal Plan Calendar</h1>
        <div className="calendar-container">
          <Calendar
            onChange={setDate}
            value={date}
            defaultValue={date}
            minDate={new Date()}
          />
        </div>
        <div className="text-center">Selected date: {date.toDateString()}</div>
      </div> */}
    </div>
  );
}
