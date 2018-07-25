X-GM-THRID: 6582055999297814528
X-Received: by 2002:a0c:c48b:: with SMTP id u11-v6mr10567859qvi.21.1532504334485;
        Wed, 25 Jul 2018 00:38:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:44c3:: with SMTP id b3-v6ls7346158qto.3.gmail; Wed, 25
 Jul 2018 00:38:54 -0700 (PDT)
X-Received: by 2002:ac8:6703:: with SMTP id e3-v6mr11208704qtp.62.1532504334009;
        Wed, 25 Jul 2018 00:38:54 -0700 (PDT)
Received: by 2002:a37:c903:0:0:0:0:0 with SMTP id q3-v6msqki;
        Tue, 24 Jul 2018 22:59:36 -0700 (PDT)
X-Google-Smtp-Source: AAOMgpcZ3w7CFkCbPDiM2RjsDzmTQeJoB0/m6ZNsAPZJCH9srXPi5sGmOYQ6HaumZL42GHsWGuok7WkY5g==
X-Received: by 2002:a37:6655:: with SMTP id a82-v6mr563343qkc.1.1532498376500;
        Tue, 24 Jul 2018 22:59:36 -0700 (PDT)
X-Google-Thread-Subscription: Yes
X-Google-Web-Client: true
Date: Tue, 24 Jul 2018 22:59:36 -0700 (PDT)
From: sekhar.916@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <5dde3470-f3b7-4bed-bbe9-eeab765b1f05@googlegroups.com>
Subject: read ADC value in kernel space
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_13208_358075128.1532498376327"
X-Google-Token: EMij4NoFfA6v395gmHU0
X-Google-IP: 122.166.233.11

------=_Part_13208_358075128.1532498376327
Content-Type: multipart/alternative; 
	boundary="----=_Part_13209_1456424118.1532498376327"

------=_Part_13209_1456424118.1532498376327
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi ,
I am using I.MX6UL based board, i have to read from ADC channel 1 and have 
to take some decision. So we have to do it in some other driver, so are 
there any lernel specific functions for ADC. We dont need sysfs interface 
as it makes our process slow

Thanks and Regards,
Chandrasekhar

------=_Part_13209_1456424118.1532498376327
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Hi ,<div>I am using I.MX6UL based board, i have to read from ADC channel 1 and have to take some decision. So we have to do it in some other driver, so are there any lernel specific functions for ADC. We dont need sysfs interface as it makes our process slow</div><div><br></div><div>Thanks and Regards,</div><div>Chandrasekhar</div></div>
------=_Part_13209_1456424118.1532498376327--

------=_Part_13208_358075128.1532498376327--

