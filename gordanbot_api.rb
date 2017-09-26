
class GordanBot
  def self.map
    { 
      48 => "use zfs, use docker.",
      99 => "have you tried killing all the poor?",
      69 => "i don't have to help you.",
      11 => "STARVE PEASANT!",
      15 => "everything you've just said could be solved with zfs send.",
      33 => "DEVOPS AS FUCK",
      34 => "Even if it's DevOps-ed as fook and everything is on ZFS I wouldn't deem that a plausible schedule.",
      101 => "Bro, do you even OpenStack?",
      102 => "Supply and demand.",
      110 => "Landmines.",
      111 => "Use sunwarrior, use water.",
      112 => "Hitler was a socialist",
      113 => "STRING THEM UP!",
      114 => "Back in Chechnya, we had to duck to avoid machine gun fire before we even got to our desks to BOFH.",
      115 => "Lock them in a room with Linus and Theo and don't open it until they're all dead.",
      116 => "Psh! It doesn't even support partitions",
      117 => "Do you even VACUUM FULL ANALYZE, uppity pondslime?",
      118 => "Don't worry, fainting is a normal reaction to seeing my rate card.",
      119 => "You just don't understand the true nature of InnoDB.",
      120 => "It's a liberal conspiracy to steal from the hard-working typist",
      121 => "Just because *you* can't write Perl doesn't mean we all can't.",
      122 => "Give up now, it's quicker than failing.",
      123 => "DROP TABLE Humans",
    }
  end

  def self.handle_message(m)
    #return "#{m.user}: no"

    if m.raw.match /DEVOPS AS FUCK/
      sleep 1
      return "DEVOPS AS FUCK"
    elsif m.raw.match /docker/i
      sleep 1
      return "Where you put your penis is up to you, but I don't want to hear about it."
    elsif m.raw.match /openstack/i
      sleep 1
      return "More like opencrack, amirite?"
    end

    a = Random.rand(2500)

    map.each do |n, val|
      if a == n
        sleep 0.7

        if Random.rand(5) == 2
          val = "#{m.user}: #{val}"
        end

        return val
      end
    end

    false
  end
end
