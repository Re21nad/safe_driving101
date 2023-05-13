import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Law1 extends StatefulWidget {
  const Law1({Key? key}) : super(key: key);

  @override
  State<Law1> createState() => _Law1State();
}

class _Law1State extends State<Law1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Scope and Definitions',
          textAlign: TextAlign.left,
          style: GoogleFonts.domine(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            height: 1.14,
            letterSpacing: -0.7000000834,
            color: Color(0xff000000),
          ),
        ),

        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.only(left: 15),
        child: Text(
          '\n Article 1 \n\nProvisions of this Law, tables annexed thereto, and regulations thereof shall apply to all types of vehicles, drivers, and passengers, in addition to the passage of pedestrians and animals.\n\nArticle 2\nIn this Law, the following terms shall have the meanings assigned thereto,unless the context requires otherwise:\n\n1. Road: Any thoroughfare open for traffic.\n\n2. Roadway: The portion of the road designated for vehicle traffic.\n\n3. Lane: A section of the roadway wide enough to accommodate one procession of vehicles; whether or not marked by longitudinal lines.\n\n4. Sidewalk: A portion of the road intended for the use of pedestrians.\n\n5. Island: The space separating two roadways.\n\n6. Road Shoulder: A portion of the road alongside and adjacent to one or both sides of the roadway intended for emergency stopping of vehicles.\n\n7. Road Area: The space allocated for the road.\n\n8. Intersection: A place where roads meet, cross, or branch off on one or more levels, including the whole area resulting therefrom.\n\n9. Freeway: A roadway accessible through designated entry and exit points,not serving adjacent properties.\n\n10.Service Road: A roadway alongside the freeway, serving adjacent properties.\n\n11.Stopping: Stopping a vehicle due to traffic, or for a period of time necessary for loading or unloading passengers or goods.\n\n12.Parking or Waiting: Keeping a vehicle stationary for a limited or unlimited period of time other than stopping.\n\n13.Parking: The space designated for parking vehicles.\n\n14.Road Markings: Lines or marks on the road or its sides to regulate road use.\n\n15.Reflectors: Any reflective material placed on the road as a road marking,or on vehicle sides or ends which is visible from an adequate distance.\n\n16.Turn: Any curve whereby a road changes direction.\n\n17.Road Signs: Any board, signal, etc. erected on the road.' +
              '\n18.Vehicle: Any land transportation means or equipment, running on wheels or chains, whether mechanically or physically propelled or pulled, not including means of public transportation using rail tracks. \n19.Automobile: Any motor vehicle used for transporting passengers, things, or both; or for towing vehicles designed for transporting passengers, things, or both. \n20.Private Automobile: A motor vehicle intended for private use to transport passengers and their belongings for no charge. Such automobile may be used for transportation for a charge by its driver who is licensed by the Public Transportation Authority to engage in such transportation using his private driver\'s license. \n21.Taxicab: A motor vehicle, seating no more than eight passengers, designated for transporting passengers and their belongings for a charge. \n22.Bus: A motor vehicle designated for transporting more than eight passengers and their belongings. Buses are of two types: \na) Public buses: for transporting passengers and their belongings for a charge. \n\nb) Private buses: for transporting passengers and their belongings for no charge.\n\n23.Truck: A motor vehicle designated for transporting animals and things. Trucks are of two types:\na) Public trucks: for transporting animals, things, and goods for a charge.\nb) Private trucks: for transporting animals, things, and goods for no charge.\n\n24.Tractor-trailer: A motor vehicle to which a trailer is attached making one unit.\n\n25.Trailer: A vehicle without an engine towed by another motor vehicle.\n\n26.Semi-trailer: A trailer having a significant part of its tare resting on a tractor-trailer.\n\n27.Emergency Vehicles: Public security motor vehicles and ambulances equipped with special audible and visual warning systems, which may exceed set speed limits and not stop at traffic lights, when necessary.\n\n28.Motorcycle: A vehicle with two or more wheels and an engine, designated for transporting passengers and things, to which a carriage may be attached, and which is not designed as a car.\n\n29.Pedal Cycle: Any un-motorized means of transport with two or more wheels, propelled by its rider.\n\n30.Construction Vehicles: Self-propelled equipment and machines including agricultural equipment.\n\n31.High beam light: the vehicle’s headlights used for illuminating the road along distance ahead when there are no vehicles in the opposite direction.\na) Low beam light: the vehicle’s headlights used to illuminate the road a short distance ahead when there are vehicles in the opposite direction.\nb) Position lights: mall head, tail, and side lights used to indicate a vehicle\'s position and dimensions.\n\n32.Technical inspection: Inspecting a vehicle at an authorized periodic inspection center.\n\n33.Driver: Any person who drives a vehicle.\n\n34.Driving License: An official document issued by the competent authority, or an accredited foreign authority, certifying that the holder thereof is qualified to drive one or more types of vehicles.\n\n35.Vehicle License: An official document issued by the competent authority, or an accredited foreign authority, permitting a vehicle to run on roads.\n\n36.Competent Authority: The authority in charge of the implementation of the provisions of the Law and its Regulations.\n\n37.Passenger: Any person, other than the driver, who is in, or getting in or out of, a vehicle.\n\n38.Pedestrians: Persons travelling on foot and the like; including those pushing or pulling baby carriages, wheelchairs, or disabled persons.\n\n39.Competent Court: A court authorized to consider and determine traffic cases and accidents.\n\n40.Traffic Accident: Any accident involving at least one moving vehicle or its load, resulting in unintentional bodily harm, material damage, or both. Traffic accidents are of two types:\na) Minor traffic accidents: any accident resulting in damages to private or public property, without any injury requiring medical treatment.\nb) Severe traffic accidents: any accident resulting in fatalities, injuries requiring medical treatment, or both, or resulting in severe damage.\n\n41.Drifting: The intentional reckless driving of a vehicle on a road or in a public place without justification, causing the tires to produce a screeching sound and forcing the vehicle to drift on either sides or rotate around itself while moving forward or backward using the power of its engine, its brakes, or transmission for the purpose of attracting attention. This includes forcing the vehicle to move on either side using only two tires, forcing a two-wheel motorcycle to move on a single wheel, the exiting of the driver or passenger while the vehicle is in motion, or the dismantling of some parts of the vehicle during movement for the purpose of attracting attention.\n\n42.Weights:\na) Empty Vehicle Weight: Weight of the vehicle plus fuel and maintenance, repair, and spare tools.\nb) Gross Vehicle Weight: Empty vehicle weight plus the cargo, driver, and passengers.\nc) Net Weight (load): The difference between gross and empty vehicle weights.\nd) Axle Weight: The portion of the load supported by one of the vehicle\'s axles.\n\n43.Regulations: The Implementing Regulations for this Law.\n\n44.Vehicle Frame: The vehicle\'s body excluding the engine, axles, and chassis.',
          textAlign: TextAlign.left,
          style: GoogleFonts.domine(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            height: 1.14,
            letterSpacing: -0.4800000572,
            color: Color(0xff000000),
          ),
        ),
      )),
    );
  }
}
