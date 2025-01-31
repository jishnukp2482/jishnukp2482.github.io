import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potfolio/portfolio/domain/entities/projects/projects_modal.dart';
import 'package:potfolio/portfolio/presentation/routes/app_pages.dart';
import 'package:potfolio/portfolio/presentation/themes/app_assets.dart';
import 'package:potfolio/portfolio/presentation/themes/app_colors.dart';

class ProjectsGridMenu extends StatelessWidget {
  ProjectsGridMenu({
    super.key,
    this.crossAxisCount,
    this.imgContainerHeight,
    this.projectNameSize,
    this.subttileOverViewSize,
    this.maxLines,
    this.distance,
    this.childAspectRatio,
    this.titileDistance,
    this.isMobile = false,
  });
  final int? crossAxisCount;
  final double? imgContainerHeight;
  final double? projectNameSize;
  final double? subttileOverViewSize;
  final int? maxLines;
  final double? distance;
  final double? childAspectRatio;
  final double? titileDistance;
  final bool? isMobile;

  final projectsList = <ProjectsModal>[
    ProjectsModal(
        id: 0,
        projectPhotos: [
          AppAssets.passbookZerothImg,
          AppAssets.passbookFirstImg,
          AppAssets.passbookThirdImg,
        ],
        projectName: "Mobile PassBook",
        subttileOverView:
            "The Passbook app is a versatile financial management tool designed to simplify users' financial activities",
        overView:
            "Passbook is a comprehensive financial management app designed to provide users with easy access to their financial records and transactions. With Passbook, users can view their passbook transactions, manage their loan details, and keep track of their cards and associated transactions. The app also offers a wide range of utility payment options, including water bills, electricity bills, and mobile recharges, making it a one-stop solution for all financial needs.Passbook enhances user convenience with its integrated QR code system for receiving payments, a built-in QR scanner for swift transactions, and a voice command feature for hands-free operation. To ensure security, the app supports fingerprint verification for login, OTP verification for sensitive actions, and easy beneficiary creation for smooth transactions.This core application is built using Flutter Flavors, allowing different banks to generate their customized versions of the app. Each bank is identified by a unique firm ID, enabling the app to retrieve and display bank-specific features tailored to their customers' needs.",
        frontEndTechnologies: [
          "Built using Flutter with Bloc state management and Freezed for code generation, adhering to the principles of Clean Architecture to ensure scalability, maintainability, and a clear separation of concerns."
        ],
        backendTechnologiesUsed: [
          "Developed using Node.js, featuring access and refresh tokens for robust and secure authentication mechanisms."
        ],
        keyFetaures: [
          "QR Code Integration: For seamless payment receiving and transaction scanning.",
          "Voice Commands: Hands-free functionality for enhanced user convenience.",
          "Robust Security: Fingerprint login, OTP verification, and secure beneficiary management.",
          "Multi-Bank Customization: Flutter Flavors enable different banks to customize the app with unique firm IDs, providing tailored features to their customers.",
        ]),
    ProjectsModal(
        id: 1,
        projectPhotos: [AppAssets.agentFirstImg, AppAssets.agentSecondImg],
        projectName: "Agent Collection",
        subttileOverView:
            "A convenient app enabling bank staff to collect payments from customers at their homes, ensuring efficient processing and customizable reporting.",
        overView:
            "This Bank Payment Collection application streamlines the process for bank employees to collect payments directly from customers at their homes. Designed with convenience and efficiency in mind, the app offers a range of features to simplify payment collection and reporting.",
        frontEndTechnologies: [
          "Built using Flutter with Getx state management and MVVM Architecture, integrating platform-specific channels for POS printing."
        ],
        backendTechnologiesUsed: [
          "Developed using Node.js, with secure authentication through access and refresh tokens."
        ],
        keyFetaures: [
          "Customer Search: Easily locate customers using their number or name for quick access to payment details.",
          "Payment Entry: Record payments accurately, ensuring seamless updates to the system.",
          "Amount Updates: Modify payment amounts as required, maintaining real-time accuracy in records.",
          "Customizable Reports: Generate detailed payment reports in PDF and DOC formats, tailored to the specific needs of different banks.",
          "POS Printing: Supports POS machines for printing transaction receipts, enhancing the in-person collection ​process."
        ]),
    ProjectsModal(
        id: 2,
        projectPhotos: [
          AppAssets.microFinFirstImg,
          AppAssets.microFinSecondImg
        ],
        projectName: "Microfinance (MFI)",
        subttileOverView:
            "A personal loan application for bank employees to create customer profiles, request loans, and track loan approvals and collections.",
        overView:
            "The MFI app is a personal loan management solution tailored for bank employees. It allows employees to create customer profiles during home visits, request loans based on collection details, and monitor loan approval statuses. With comprehensive reporting capabilities, it simplifies the loan approval process and collection management for financial institutions.",
        frontEndTechnologies: [
          "Built using Flutter with Bloc state management and Clean Architecture."
        ],
        backendTechnologiesUsed: [
          "Developed using Node.js with access and refresh tokens for secure authentication."
        ],
        keyFetaures: [
          "Customer Profile Creation: Employees can create profiles during home visits based on collection data.",
          "Loan Request Management: Employees can initiate loan requests based on customer details.",
          "Report Generation: Provides comprehensive reports for loan statuses and collection details.",
          "Collection Monitoring: Track loan collection statuses to streamline loan approval and management.",
        ]),
    ProjectsModal(
        id: 3,
        projectPhotos: [AppAssets.clubFirstImg, AppAssets.clubSecondImg],
        projectName: "Club Management App",
        subttileOverView:
            "A club management solution for handling orders, table reservations, and member management, with enhanced functionality for administrators.",
        overView:
            "The Club Management App is designed to optimize the operations of kitchen and bar outlets (KOT and BOT) within a club, while also managing table reservations. The app provides registered members with easy access to club services, allowing them to place orders for food, drinks, and other services, with charges deducted from their balance. Administrators can modify the app’s URL to accommodate the unique settings and member data of different clubs, streamlining operations across multiple locations. This app enhances operational efficiency and ensures a seamless experience for both members and staff.",
        frontEndTechnologies: [
          "Built using Flutter with Provider state management and Clean Architecture."
        ],
        backendTechnologiesUsed: [
          "Developed using Node.js, incorporating access and refresh tokens for secure authentication."
        ],
        keyFetaures: [
          "Member Access: Registered members can log in using their member number to access personalized services and place orders.",
          "Order Management: Members can order food, drinks, and services directly from the app, with charges deducted from their account balance."
              "Admin Controls: Admins can log in to modify app settings, including the URL, allowing multiple clubs to manage their unique configurations."
              "Reservation Management: The app also enables the management of table reservations, helping streamline customer service."
              "Multi-Club Support: Designed to be adaptable to multiple clubs, each with its own set of settings and member data."
        ]),
    ProjectsModal(
        id: 4,
        projectPhotos: [AppAssets.kvgbFirstImg, AppAssets.kvgbSecondImg],
        projectName: "Karnataka vikas grameena bank(SMA)",
        subttileOverView:
            "Also Known as Kvgb Loan Recovery.A comprehensive solution for agents to manage loan and asset information, track properties, and streamline the collection process.",
        overView:
            "This platform is purpose-built to streamline and enhance transactional efficiency by comprehensively gathering information about both the property (land) and the customer. The app ensures accuracy and efficiency in the data collection process, enabling agents to gather all necessary details related to customer loans and property assets for smooth loan approval and management.",
        frontEndTechnologies: [
          "Built using Flutter with Getx state management and MVVM Architecture."
        ],
        backendTechnologiesUsed: [
          "Developed using Node.js, incorporating access and refresh tokens for secure authentication."
        ],
        keyFetaures: [
          "Loan and Asset Information Gathering: Collect comprehensive data about customer assets and loan details.",
          "Property Image Upload: Agents can capture and upload images of customer properties for verification.",
          "Location Tracking: GPS tracking to record the exact location of customer properties.",
          "Transaction and Collection Follow-Up: Track and update follow-up details related to customer transactions and collections.",
          "Data Upload and Synchronization: Real-time data upload and synchronization with the central system for seamless updates.",
        ]),
    ProjectsModal(
        id: 5,
        projectPhotos: [
          AppAssets.loanRecoveryFirstImg,
          AppAssets.loanRecoverySecondImg
        ],
        projectName: "Loan Recovery",
        subttileOverView:
            "A dynamic app enabling loan recovery agents to securely collect payments and track loan recovery processes across multiple banks.",
        overView:
            "Loan Recovery APK is a centralized application designed to cater to the unique needs of six banks, providing tailored solutions for effective loan recovery. The app dynamically adapts its functionality based on the registration of each bank, ensuring that features are customized for seamless loan management.",
        frontEndTechnologies: [
          "Built using Flutter with Provider state management and Clean Architecture."
        ],
        backendTechnologiesUsed: [
          "Developed using Node.js, incorporating access and refresh tokens for secure authentication."
        ],
        keyFetaures: [
          " Bank-Specific Functionality: Customizes features based on the registration of six different banks.",
          "Agent Authentication: Secure login for loan recovery agents using their username and password.",
          "EMI Collection: Agents can collect EMI payments from loan takers, streamlining the recovery process.",
          "Location Tracking: Tracks the agent's location during collection visits for enhanced accuracy and security.",
          "Image Verification: Allows agents to capture and verify images of loan takers for additional security.",
        ]),
    ProjectsModal(
        id: 6,
        projectPhotos: [AppAssets.imgCollectionImg],
        projectName: "Image Collection",
        subttileOverView:
            "Seamlessly Update Customer Images & Signatures for Secure Banking",
        overView:
            "Image Collection is a specialized mobile application designed to facilitate the seamless updating of customer profile images, proof images, and signature images—including virtual signatures—directly to a bank's database. This app is intended to enhance the efficiency of banking operations by providing a secure, digital solution for capturing, verifying, and storing essential customer documents in real-time.This solution is particularly useful for banking institutions that require frequent updates to customer records, ensuring that all images and signatures are current, verifiable, and securely stored.",
        frontEndTechnologies: [
          "Built using Flutter with Getx state management and Clean Architecture.",
        ],
        backendTechnologiesUsed: [
          "Developed using Node.js, incorporating access and refresh tokens for secure authentication."
        ],
        keyFetaures: [
          "Customer Image Update: Capture or upload a new customer profile image and update it in the bank's database.",
          " Proof Image Upload: Add and update customer proof images (e.g., ID cards, address proofs) for verification.",
          " Signature Capture & Upload: Upload a scanned signature or capture a new signature using a stylus or touchscreen.",
          " Virtual Signature Support: Allows customers to sign digitally within the app for seamless documentation.",
          " Secure Storage & Encryption: Ensures that all images and signatures are securely transmitted and stored.",
          " Real-Time Updates: Instantly syncs with the bank’s system, reducing paperwork and processing time.",
          " User Authentication: Ensures secure access for authorized bank personnel.",
          " Multi-Device Compatibility: Works across mobile and tablet devices for ease of use.",
        ]),
    ProjectsModal(
        id: 7,
        projectPhotos: [AppAssets.gasFirstImg],
        projectName: "Gas Agenecy",
        subttileOverView:
            "A mobile solution for gas agency employees to manage repair tasks, track locations, and verify service completion.",
        overView:
            "This mobile application empowers gas agency employees to efficiently manage assigned repair tasks, navigate to customers' locations, complete repairs, and verify completion, all through a streamlined interface.",
        frontEndTechnologies: [
          "Built using Flutter with Getx state management and MVVM Architecture.",
        ],
        backendTechnologiesUsed: [
          "Developed using Node.js, incorporating access and refresh tokens for secure authentication."
        ],
        keyFetaures: [
          "Task Management: Employees can manage and track assigned repair tasks effectively.",
          "Customer Location Navigation: Integrated map features to help employees navigate to customers' locations.",
          "Real-Time Location Tracking: Tracks employee location in real-time while they perform tasks.",
          "Service Request Handling: Employees receive detailed service requests and customer information for task preparation.",
          "Task Verification: Repairs can be verified upon completion directly through the app.",
        ])
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount ?? 3,
        crossAxisSpacing: 70.w,
        mainAxisSpacing: 70.h,
        childAspectRatio: childAspectRatio ?? 1,
      ),
      itemCount: projectsList.length,
      itemBuilder: (context, index) {
        return ProjectItem(
          projectsModal: projectsList[index],
          imgContainerHeight: imgContainerHeight,
          projectNameSize: projectNameSize,
          subttileOverViewSize: subttileOverViewSize,
          maxLines: maxLines,
          distance: distance,
          titileDistance: titileDistance,
          isMobile: false,
        );
      },
    );
  }
}

class ProjectItem extends StatefulWidget {
  const ProjectItem(
      {super.key,
      required this.projectsModal,
      this.imgContainerHeight,
      this.projectNameSize,
      this.subttileOverViewSize,
      this.maxLines,
      this.distance,
      this.titileDistance,
      this.isMobile = false});
  final ProjectsModal projectsModal;
  final double? imgContainerHeight;
  final double? projectNameSize;
  final double? subttileOverViewSize;
  final int? maxLines;
  final double? distance;
  final double? titileDistance;
  final bool? isMobile;
  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> scaleAnimation;
  bool isHovered = false;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5))
          ..repeat(reverse: true);
    scaleAnimation = Tween<double>(begin: 0.9, end: 1.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut));
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void onHover(bool isHovering) {
    setState(() {
      isHovered = isHovering;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => onHover(true),
      onExit: (event) => onHover(false),
      child: GestureDetector(
        onTap: () => GoRouter.of(context)
            .pushNamed(AppPages.projectsView, extra: widget.projectsModal),
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              border: Border.all(
                  color: isHovered ? AppColors.appBlue : AppColors.transparent),
              borderRadius: BorderRadius.circular(20.w),
              gradient: LinearGradient(colors: [
                Theme.of(context).primaryColorDark,
                AppColors.lightBlack,
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: widget.imgContainerHeight ?? 200.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: AppColors.blue,
                      image: DecorationImage(
                          image: AssetImage(
                              widget.projectsModal.projectPhotos.first),
                          alignment: Alignment.topCenter,
                          fit: BoxFit.contain),
                    ),
                  ),
                  SizedBox(
                    height: widget.titileDistance ?? 25.h,
                  ),
                  Text(
                    widget.projectsModal.projectName,
                    style: GoogleFonts.nunitoSans(
                        color: Theme.of(context).primaryColor.withOpacity(0.8),
                        fontSize: widget.projectNameSize ?? 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: widget.distance ?? 10.h,
                  ),
                  Text(
                    widget.projectsModal.subttileOverView,
                    overflow: TextOverflow.ellipsis,
                    maxLines: widget.maxLines ?? 3,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.nunitoSans(
                        color: Theme.of(context).primaryColor.withOpacity(0.35),
                        fontSize: widget.subttileOverViewSize ?? 14.sp,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
