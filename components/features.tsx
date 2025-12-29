import { Check } from "lucide-react"

const features = [
  {
    icon: "📅",
    title: "Public Booking",
    description: "Patients book acne, laser, or peel sessions instantly — no login needed",
  },
  {
    icon: "💊",
    title: "Smart Treatment Plans",
    description: "Prescribe multi-session therapies auto-scheduled and tracked",
  },
  {
    icon: "📝",
    title: "Digital Prescriptions",
    description: "Structured medicines with dosage timing — morning/night instructions",
  },
  {
    icon: "💳",
    title: "Auto Invoicing",
    description: "Handle deposits, partial payments, and track dues automatically",
  },
  {
    icon: "🛒",
    title: "Patient Portal + E-commerce",
    description: "Sell skincare products and offer LMS courses for recurring revenue",
  },
  {
    icon: "📊",
    title: "Receptionist Dashboard",
    description: "View appointments and full patient history at a glance",
  },
]

export default function Features() {
  return (
    <section id="features" className="py-20 sm:py-20 bg-background">
      <div className="mx-auto max-w-6xl px-4 sm:px-6 lg:px-8">
        <div className="text-center space-y-4 mb-16">
          <h2 className="text-3xl sm:text-4xl font-bold text-foreground">Everything You Need</h2>
          <p className="text-lg text-foreground/60 max-w-2xl mx-auto">
            All dermatology-optimized features included in your BDT 5,000/month plan
          </p>
        </div>
        <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
          {features.map((feature, idx) => (
            <div
              key={idx}
              className="rounded-xl border border-border bg-card p-6 hover:shadow-lg transition duration-300"
            >
              <div className="text-3xl mb-3">{feature.icon}</div>
              <h3 className="text-lg font-semibold text-foreground mb-2">{feature.title}</h3>
              <p className="text-sm text-foreground/60">{feature.description}</p>
              <Check className="h-4 w-4 text-accent mt-4" />
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
