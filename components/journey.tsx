import {
  TbHexagonNumber1Filled,
  TbHexagonNumber2Filled,
  TbHexagonNumber3Filled,
  TbHexagonNumber4Filled,
  TbHexagonNumber5Filled,
  TbHexagonNumber6Filled,
} from "react-icons/tb";

const steps = [
  {
    icon: <TbHexagonNumber1Filled />,
    title: "Patient Books",
    description:
      'Visitor books "Acne Consultation" on your website — just name + phone',
  },
  {
    icon: <TbHexagonNumber2Filled />,
    title: "Auto-Create Profile",
    description: "Receptionist confirms → system auto-creates patient profile",
  },
  {
    icon: <TbHexagonNumber3Filled />,
    title: "Doctor Prescribes",
    description:
      "Prescribe medications + multi-session treatments with auto-scheduling",
  },
  {
    icon: <TbHexagonNumber4Filled />,
    title: "Invoice & Payment",
    description: "Auto-generated invoice — patient pays deposit via Bkash",
  },
  {
    icon: <TbHexagonNumber5Filled />,
    title: "Patient Portal",
    description:
      "Patient gets access: views care plan, pays balance, buys products",
  },
  {
    icon: <TbHexagonNumber6Filled />,
    title: "Auto Reminders",
    description: "Receptionist sees next session and sends automated reminders",
  },
];

export default function Journey() {
  return (
    <section className="py-20 sm:py-20 bg-muted/50 ">
      <div className="mx-auto max-w-6xl px-4 sm:px-6 lg:px-8">
        <div className="text-center space-y-4 mb-16">
          <h2 className="text-3xl sm:text-4xl font-bold text-foreground">
            The Dermatology Patient Journey
          </h2>
          <p className="text-lg text-foreground/60">
            Seamless. Paperless. Profitable.
          </p>
        </div>
        <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
          {steps.map((step, i) => (
            <div key={i} className="relative">
              <div className="rounded-xl border border-border bg-card p-6">
                <div className="flex items-center gap-3 mb-3">
                  <div className="flex h-10 w-10 items-center justify-center rounded-full bg-primary-theme text-primary-foreground font-bold text-3xl">
                    {step.icon}
                  </div>
                  <h3 className="font-semibold text-foreground">
                    {step.title}
                  </h3>
                </div>
                <p className="text-sm text-foreground/60">{step.description}</p>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
