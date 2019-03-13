X-GM-THRID: 6666132758820028416
X-Received: by 2002:a17:906:6dce:: with SMTP id j14mr4853612ejt.4.1552463435763;
        Wed, 13 Mar 2019 00:50:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:9257:: with SMTP id c23ls211619ejx.2.gmail; Wed, 13
 Mar 2019 00:50:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwXO0gHTKTXkZTYLUl0/CsPBBoyEkzW+dZKZZPTeBHDzo0VzwpFX+P3qKbNyt4w0dslHa9v
X-Received: by 2002:a17:906:1c46:: with SMTP id l6mr4858044ejg.9.1552463435002;
        Wed, 13 Mar 2019 00:50:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552463435; cv=none;
        d=google.com; s=arc-20160816;
        b=Rlhb6+hyiszzNrdClhDZns37v6KmMGiPUwbM/u59ZsbwvThReQ0ivHgP4JjxEjBqGz
         oEvTHrJiLi3f9YlHc5WQi5ZfVPY/UzMHgxmAJ4fwkQ7UOaQ4mln7IqkeApRWUNs0Z78X
         0JEGBxNRKaHpNImq9A6x552XqEjKyoB6yVlGBtj9auM7VCjCG3fw+AH+H0PMufyqbCg0
         XOtVdw5J8Do/yfxHHa6LVSRlfZ/xhuJ59vqwh2dD5wWc3hpZLzrjkJklL7H4lMWCnHeX
         UWpy9k2dLyWEGtuJ1Ti98GcBQdaPHtAaO4AiKbEBrGLhlwA+m1izXbzqJ6AGfr4SwOm5
         WHAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date;
        bh=pZE6j3XYCsRFCJwmAIjrtaEN7Wt2icBe2M2pdz2G1Q0=;
        b=UsDq7/fk1VkozU8tyH1FnaAJVWOBHceCTBfesSGBvagFt+1VjbLqOyHPFSjSODUW8+
         mKNTWadg7794RSsa+19jH3gfc6CvglIF3jNrb0CQq30IfAqr6ePVgQlbQ8AH+BLFXXL/
         jdoM0dj0wRlrsXSn+s0jmt6p9/yogXXsVs5t40NvZ6vrX8XTfeQv6ov/bDoFs1yuz4Rb
         0a+MyC6TKa0aS9uRnsxQm7LNcQhVOZJxOkZwbLcFMd57h3zNxxAfugjeetNlQQqwmg+V
         h7vJRJXksQ4WIl4UNyZN7DSqkx1WBygrVwwH553BkjaH2V6qQHOKUBOUEzzIPmBK7UIy
         SiGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a7si45454edb.1.2019.03.13.00.50.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 00:50:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,474,1544482800"; 
   d="scan'208";a="299066023"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2019 08:50:34 +0100
Date: Wed, 13 Mar 2019 08:50:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: Coccinelle project
Message-ID: <alpine.DEB.2.21.1903130846580.3309@hadrien>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

Several people have contacted me because they have tried running the
semantic patches that are in the Linux kernel and are surprised or
confused by the fact that they don't get any results.  Actually, these
semantic patches are run on every commit to the Linux kernel by the 0-day
build testing service and others, so it is not so likely that any issues
will be found.  Please work through the examples on my kernelnewbies page
instead:

https://kernelnewbies.org/JuliaLawall

I have checked all of these examples and they should give results.  There
are a few where I do note that there are very few results, but even in
those cases I don't think that the issues have been addressed.

julia

