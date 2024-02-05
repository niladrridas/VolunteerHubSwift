// main.swift

// Updated Swift code without UIKit
import Foundation // Foundation framework for basic Swift functionality

// Define a VolunteerOpportunity struct to represent volunteer opportunities
struct VolunteerOpportunity {
    var title: String
    var description: String
    var location: String
    var date: Date
}

// Create an advanced VolunteerHub class with additional features
class VolunteerHub {
    var opportunities: [VolunteerOpportunity] = []
    
    // Function to add a new volunteer opportunity with date and time
    func addOpportunity(title: String, description: String, location: String, date: Date) {
        let newOpportunity = VolunteerOpportunity(title: title, description: description, location: location, date: date)
        opportunities.append(newOpportunity)
        print("Volunteer Opportunity added: \(newOpportunity.title)")
    }
    
    // Function to display upcoming volunteer opportunities
    func displayUpcomingOpportunities() {
        let currentDate = Date()
        let upcomingOpportunities = opportunities.filter { $0.date > currentDate }
        
        print("Upcoming Volunteer Opportunities:")
        for opportunity in upcomingOpportunities {
            print("\(opportunity.title) - Location: \(opportunity.location)")
            print("Date and Time: \(formattedDate(opportunity.date))")
            print("Description: \(opportunity.description)")
            print("--------------------")
        }
    }
    
    // Function to format date in a user-friendly way
    func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd, yyyy 'at' hh:mm a"
        return formatter.string(from: date)
    }
}

// Example usage
let volunteerHub = VolunteerHub()

// Adding opportunities with date and time details
volunteerHub.addOpportunity(title: "Community Cleanup", description: "Help clean up local parks and streets.", location: "City Park", date: Date().addingTimeInterval(86400)) // Tomorrow
volunteerHub.addOpportunity(title: "Food Bank Assistance", description: "Volunteer at the local food bank to support those in need.", location: "Community Center", date: Date().addingTimeInterval(172800)) // Day after tomorrow

volunteerHub.displayUpcomingOpportunities()

