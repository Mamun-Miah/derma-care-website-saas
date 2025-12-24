import CardNav from '@/components/CardNav';
import Hero from '@/components/Hero';
const logo = '/logo.png';

export default function Home() {
  const items = [
    {
      label: "About",
      bgColor: "#0D0716",
      textColor: "#fff",
      links: [
        { label: "Company", href: "/about/company", ariaLabel: "About Company" },
        { label: "Careers", href: "/about/careers", ariaLabel: "About Careers" }
      ]
    },
    {
      label: "Projects", 
      bgColor: "#170D27",
      textColor: "#fff",
      links: [
        { label: "Featured", href: "/projects/featured", ariaLabel: "Featured Projects" },
        { label: "Case Studies", href: "/projects/case-studies", ariaLabel: "Project Case Studies" }
      ]
    },
    {
      label: "Contact",
      bgColor: "#271E37", 
      textColor: "#fff",
      links: [
        { label: "Email", href: "mailto:contact@company.com", ariaLabel: "Email us" },
        { label: "Twitter", href: "https://twitter.com", ariaLabel: "Twitter" },
        { label: "LinkedIn", href: "https://linkedin.com", ariaLabel: "LinkedIn" }
      ]
    }
  ];
  return (
    <>
    <CardNav
      logo={logo}
      logoAlt="Company Logo"
      items={items}
      baseColor="#fffeeee"
      menuColor="#C06B59"
      buttonBgColor="#C06B59"
      buttonTextColor="#fff"
      ease="power3.out"
    />
    <Hero />
    </>
  );
}
