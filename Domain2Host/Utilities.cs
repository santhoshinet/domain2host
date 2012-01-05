using System.Collections;

namespace Domain2Host
{
    public class Utilities
    {
        public static string ResellerId = "170093";

        public static string Resellerpassword = "pushpam4522II$b";

        public static Hashtable DomainAmounts = new Hashtable
                                                    {
                                                        {"in", "RS 99/-"},
                                                        {"com", "RS 100/-"},
                                                        {"org", "RS 100/-"},
                                                        {"co.in", "RS 100/-"},
                                                        {"net", "RS 100/-"},
                                                        {"info", "RS 100/-"},
                                                        {"co", "RS 100/-"},
                                                        {"cc", "RS 100/-"},
                                                        {"co.uk", "RS 100/-"},
                                                        {"net.in", "RS 100/-"},
                                                        {"biz", "RS 100/-"},
                                                        {"ind.in", "RS 100/-"},
                                                    };
        public static Hashtable DomainStrikeouts = new Hashtable
                                                    {
                                                        {"in", "RS 99/-"},
                                                        {"com", "RS 100/-"},
                                                        {"org", "RS 100/-"},
                                                        {"co.in", "RS 100/-"},
                                                        {"net", "RS 100/-"},
                                                        {"info", "RS 100/-"},
                                                        {"co", "RS 100/-"},
                                                        {"cc", "RS 100/-"},
                                                        {"co.uk", "RS 100/-"},
                                                        {"net.in", "RS 100/-"},
                                                        {"biz", "RS 100/-"},
                                                        {"ind.in", "RS 100/-"},
                                                    };

        public static bool DevelopmentMode = true;
    }

    public struct Domaindetails
    {
        public string Name { get; set; }

        public string Extension { get; set; }
    }
}