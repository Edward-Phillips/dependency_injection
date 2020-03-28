# dependency_injection

This is a simple demonstration of dependency injection being used to
randomly generate the contents and motor type of a StolenVan class.


The StolenVan makes use of dependency_injection when determining
which goods the van's storing and determining what the motor type
of the van is - the van just holds these classes as generic
attributes, it doesn't know what they are, but because they
ALL respond to the same methods I can offload the goods without
caring what class they are, as all goods classes respond to sell.

So when I create a new van I'm injecting these new classes
(which I don't necessarily know, I could choose anything as long
as it obeys the Liskov Substition principle)

If the StolenVan class was always carrying PreciousMetals and
had a Petrol motor then this would be an example of the
 dependency inversion principle, as the Van would just hold those
 classes in the goods & motor section, but every instance of the
 StolenVan class would also do the same thing.
