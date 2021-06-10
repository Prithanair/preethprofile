import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
Color kPrimaryColor = Color(0xffC0392B);

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  "https://img.icons8.com/material-rounded/384/ffffff/github.png",
];

const kSocialLinks = [
  "https://facebook.com/",
  "https://www.linkedin.com/in/preetha-k-v-08474663/",
  "https://github.com/Prithanair/ProfileServer.git",
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';


// Tools & Tech
final kTools = ["Programming: Java, C, Go, Flutter",
  "Security Domain: PKIs, IPSec, TLS",
  "Networking: L2/L3 Protocol",
  "Scripting: Shell, Python",
  "RESTful API Interfaces: JSON, XML",
  "Others: Docker, Kubernetes, GCP"
];

// projects

final kProjectsTitles = [
  "Katim Secure Solutions",
  "Flexi Platform",
  "Web Security Appliance",
  "PM3 Datagen X Utility",
];

final kPositions = [
  "Software Engineer at Digital14",
  "Technical Lead Software Developer at Nokia",
  "Platform Developer at HCL Technologies",
  "PG Intern at Microchip India Pvt. Ltd.",
];


final kProjectsDescriptions = [
  '''Currently working as Software Engineer adhering to professional software engineering practices & best practices for the full software development life cycle, including coding standards, code reviews, source control management, build processes, and testing.\n
Technologies: Java/J2EE, Microservice Architecture, JAX-RS (Rest Easy), CDI, MySQL, PKI, TLS, AES/HMAC, Kubernetes.''',
'''Functioned as a part of System Analyst Team for Nokia Proprietary Operating System Platform (Flexi Platform). Led all phases of software development life cycle including analysis, design, development, deployment and maintenance of web applications. \n 
Technologies: C, Core Java, Open SSL, TCP/IP, Layer-2/Layer-3 Protocols''' ,
'''Supported in managing overall SDLC viz. scope analysis, requirements study, design, development, testing, rendering application enhancement support while maintaining coordination with stakeholders & providing them with regular updates about the project.\n
Technologies: C, Core Java, Python, Free BSD, KQueue, Open SSL and Perforce''',
'''Design the utility that generates a Binary file containing all the information required to program any device in a standalone mode, by parsing the information from the database.\n
Technologies : Java, Ant Scripting, Silk test Tool'''
];


// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "UAE",
  "(+971) 58662 1450",
  "pritha.kv@gmail.com"
];