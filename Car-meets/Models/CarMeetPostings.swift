//
//  Product.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-01.
//

import Foundation

struct CarMeetPostings : Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var description: String
    var location: String
    var date: String
}

var carMeetList = [
    CarMeetPostings(title: "Car Meet 1",
                    image: "cm1",
                    description: "Join us for an exhilarating day filled with the roar of engines and the gleam of polished metal! Our Supercar Sunday Meetup is a gathering of automotive enthusiasts, showcasing some of the most stunning and high-performance vehicles on the road today. Whether you are a fan of classic muscle cars, sleek sports cars, or cutting-edge supercars, there is something for everyone at this event. Chat with fellow car enthusiasts, admire the impressive lineup of vehicles, and even get the chance to meet some of the owners and learn about their prized machines. In addition to the incredible cars on display, we will have food trucks offering delicious refreshments, music to set the mood, and opportunities for photoshoots with your favorite rides. Do not miss out on this unforgettable day of horsepower, adrenaline, and camaraderie. Mark your calendars and join us for the Supercar Sunday Meetup! Contact: For inquiries, email us at info@supercarsunday.com or visit our website at www.supercarsunday.com.",
                    location: "Burnaby Mountain",
                    date: "20/09/2024"),
    CarMeetPostings(title: "Car Meet 2",
                    image: "cm2",
                    description: "Join us for an exhilarating day filled with the roar of engines and the gleam of polished metal! Our Supercar Sunday Meetup is a gathering of automotive enthusiasts, showcasing some of the most stunning and high-performance vehicles on the road today. Whether you are a fan of classic muscle cars, sleek sports cars, or cutting-edge supercars, there is something for everyone at this event. Chat with fellow car enthusiasts, admire the impressive lineup of vehicles, and even get the chance to meet some of the owners and learn about their prized machines. In addition to the incredible cars on display, we will have food trucks offering delicious refreshments, music to set the mood, and opportunities for photoshoots with your favorite rides. Do not miss out on this unforgettable day of horsepower, adrenaline, and camaraderie. Mark your calendars and join us for the Supercar Sunday Meetup! Contact: For inquiries, email us at info@supercarsunday.com or visit our website at www.supercarsunday.com.",
                    location: "Burnaby Mountain",
                    date: "20/09/2024 5PM"),
    CarMeetPostings(title: "Car Meet 3",
                    image: "cm2",
                    description: "Join us for an exhilarating day filled with the roar of engines and the gleam of polished metal! Our Supercar Sunday Meetup is a gathering of automotive enthusiasts, showcasing some of the most stunning and high-performance vehicles on the road today. Whether you are a fan of classic muscle cars, sleek sports cars, or cutting-edge supercars, there is something for everyone at this event. Chat with fellow car enthusiasts, admire the impressive lineup of vehicles, and even get the chance to meet some of the owners and learn about their prized machines. In addition to the incredible cars on display, we will have food trucks offering delicious refreshments, music to set the mood, and opportunities for photoshoots with your favorite rides. Do not miss out on this unforgettable day of horsepower, adrenaline, and camaraderie. Mark your calendars and join us for the Supercar Sunday Meetup! Contact: For inquiries, email us at info@supercarsunday.com or visit our website at www.supercarsunday.com.",
                    location: "Burnaby Mountain",
                    date: "20/09/2024 5PM"),
    CarMeetPostings(title: "Car Meet 4",
                    image: "cm4",
                    description: "Join us for an exhilarating day filled with the roar of engines and the gleam of polished metal! Our Supercar Sunday Meetup is a gathering of automotive enthusiasts, showcasing some of the most stunning and high-performance vehicles on the road today. Whether you are a fan of classic muscle cars, sleek sports cars, or cutting-edge supercars, there is something for everyone at this event. Chat with fellow car enthusiasts, admire the impressive lineup of vehicles, and even get the chance to meet some of the owners and learn about their prized machines. In addition to the incredible cars on display, we will have food trucks offering delicious refreshments, music to set the mood, and opportunities for photoshoots with your favorite rides. Do not miss out on this unforgettable day of horsepower, adrenaline, and camaraderie. Mark your calendars and join us for the Supercar Sunday Meetup! Contact: For inquiries, email us at info@supercarsunday.com or visit our website at www.supercarsunday.com.",
                    location: "Burnaby Mountain",
                    date: "20/09/2024 5PM"),
    CarMeetPostings(title: "Car Meet 5",
                    image: "cm5",
                    description: "Join us for an exhilarating day filled with the roar of engines and the gleam of polished metal! Our Supercar Sunday Meetup is a gathering of automotive enthusiasts, showcasing some of the most stunning and high-performance vehicles on the road today. Whether you are a fan of classic muscle cars, sleek sports cars, or cutting-edge supercars, there is something for everyone at this event. Chat with fellow car enthusiasts, admire the impressive lineup of vehicles, and even get the chance to meet some of the owners and learn about their prized machines. In addition to the incredible cars on display, we will have food trucks offering delicious refreshments, music to set the mood, and opportunities for photoshoots with your favorite rides. Do not miss out on this unforgettable day of horsepower, adrenaline, and camaraderie. Mark your calendars and join us for the Supercar Sunday Meetup! Contact: For inquiries, email us at info@supercarsunday.com or visit our website at www.supercarsunday.com.",
                    location: "Burnaby Mountain",
                    date: "20/09/2024 5PM")
]
