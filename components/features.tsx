import { Check } from "lucide-react";
import { BsJournalMedical } from "react-icons/bs";
import {
  FaFileMedical,
  FaRegCalendarCheck,
  FaRegCreditCard,
  FaRegUserCircle,
} from "react-icons/fa";
import { ImCreditCard } from "react-icons/im";
import { MdOutlineNotificationsActive } from "react-icons/md";
import { RiCalendarScheduleLine, RiFolderHistoryLine } from "react-icons/ri";

const features = [
  {
    icon: <FaRegCalendarCheck />,
    title: "Appointment Booking",
    description:
      "Patients can book appointments instantly with doctors—no hassle, no waiting.",
  },
  {
    icon: <FaRegUserCircle />,
    title: "Patient Profiles",
    description:
      "Automatically create and manage complete patient records in one place.",
  },
  {
    icon: <FaFileMedical />,
    title: "Doctor Prescriptions",
    description:
      "Doctors can digitally prescribe medicines and treatment plans.",
  },
  {
    icon: <FaRegCreditCard />,
    title: "Billing & Invoices",
    description:
      "Generate invoices, manage charges, and keep billing fully organized.",
  },
  {
    icon: <ImCreditCard />,
    title: "Partial Payments",
    description:
      "Accept advance or split payments with accurate balance tracking.",
  },
  {
    icon: <RiFolderHistoryLine />,
    title: "Payment History",
    description:
      "View all transactions and payment records with full transparency.",
  },
  {
    icon: <RiCalendarScheduleLine />,
    title: "Next Appointment Tracking",
    description: "Easily track upcoming visits and follow-up schedules.",
  },
  {
    icon: <BsJournalMedical />,
    title: "Medical Reports",
    description: "Store and access patient reports securely anytime.",
  },
  {
    icon: <MdOutlineNotificationsActive />,
    title: "Smart Notifications",
    description:
      "Automated reminders for appointments, payments, and follow-ups.",
  },
];

export default function Features() {
  return (
    <section id="features" className="py-20 sm:py-20 bg-background">
      <div className="mx-auto max-w-6xl px-4 sm:px-6 lg:px-8">
        <div className="text-center space-y-4 mb-16">
          <h2 className="text-3xl sm:text-4xl font-bold text-foreground">
            Everything You Need
          </h2>
          <p className="text-lg text-foreground/60 max-w-2xl mx-auto">
            All dermatology-optimized features included in your BDT 5,000/month
            plan
          </p>
        </div>
        <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
          {features.map((feature, idx) => (
            <div
              key={idx}
              className="rounded-xl border border-border bg-card p-6 hover:shadow-lg transition duration-300 hover:bg-[#6dadfc]"
            >
              <div className="text-3xl mb-3 bg-[#2563EB] text-white w-12 h-12 rounded-full flex items-center justify-center">
                {feature.icon}
              </div>
              <h3 className="text-lg font-semibold text-foreground mb-2">
                {feature.title}
              </h3>
              <p className="text-sm text-foreground/60">
                {feature.description}
              </p>
              <Check className="h-4 w-4 text-accent mt-4" />
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
