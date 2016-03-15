X-GM-THRID: 6262269651067076608
X-Received: by 10.182.56.233 with SMTP id d9mr22170489obq.2.1458048273699;
        Tue, 15 Mar 2016 06:24:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.52 with SMTP id 49ls218934qgo.79.gmail; Tue, 15 Mar
 2016 06:24:33 -0700 (PDT)
X-Received: by 10.129.72.195 with SMTP id v186mr22032682ywa.37.1458048272998;
        Tue, 15 Mar 2016 06:24:32 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id p6si1264801ywe.2.2016.03.15.06.24.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Mar 2016 06:24:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id w104so13397123qge.1
        for <outreachy-kernel@googlegroups.com>; Tue, 15 Mar 2016 06:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bhR2CfeICzDsADRZIeJKtkv2OeqeyxZ1dtGmdgD50X0=;
        b=UBMhTU+st8gTHkQ18GMfuHmQrRnE9ErWGmg9+x211vbOeBA0AtPKmaNdFzZ2LHcanT
         977YKiTnKpQMXwX3GTncuz2HbbJDUMcWObrth84LMgLgB4uuAhAtPObz/4zb9cMT1VDp
         T7PeSJdRfRNKwzIFrFRzjUWFsuH39ytohnY1d0B0NwT+P4z3Lki+qST6Y12uUY47cdMo
         EkL75S1nMQ4wgyweZ9VpoRvbwDxsctewcGe1Mc6hrVpget/hD9jxlqSuakc0/SKOmQLM
         U+ZaNRvNJqYwrnYL+cBlz70Gvqe3IzsdySmqI7B+shrMxi8UucEmcsuIP0kG41XvJG/e
         jhyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bhR2CfeICzDsADRZIeJKtkv2OeqeyxZ1dtGmdgD50X0=;
        b=UrtdqlQ2y3weBRlY9FvKYt3bamAIH7459BIZe9VRpvHXlNOFfwvXnlNC+5z4vQnSSe
         EYQoAaMR4pVeYBlTQpMlhIIaDi3CeCbhNH8aocYcVQUrnb7jLMUN7uXuG4vvzv5jjK5c
         U1didt5r1PZllTfhDz8b1ANJ4eKbVDhkKt6Ptr7xEZH9y7v/1YcTmOE9wgEBWzW6Q8iy
         6dYOpYpqHcqJle4xl9NnVVklmszzVe/i7IQp9YG8SU9Ec7+9fTaYufkWjhpzsyZjdtHn
         GIks6q4NtVHM/CH5kLXDNNEOkq+WTHN7eZp3MnmxXborMLqaDoljLDYirY53YJ5jqOMq
         /hoA==
X-Gm-Message-State: AD7BkJLIWgrgluTeg7riIFgAusdS/rWsa31tF+bNtOFZiOTF8J1EJz9BYO2VEY7/0zhhVg==
X-Received: by 10.140.18.168 with SMTP id 37mr37586970qgf.59.1458048272684;
        Tue, 15 Mar 2016 06:24:32 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([187.32.0.50])
        by smtp.gmail.com with ESMTPSA id g184sm12765854qkb.7.2016.03.15.06.24.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 15 Mar 2016 06:24:31 -0700 (PDT)
Date: Tue, 15 Mar 2016 10:24:29 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [KERNEL NEWBIES ACCESS] JulianaRodrigues
Message-ID: <20160315132429.GA21059@spock.lab.dextra.com.br>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Hello,

I'd like to have access to kernel newbie's page so
I can claim tasks.

Thanks,
Juliana.

