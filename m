X-GM-THRID: 6811040563999014912
X-Received: by 2002:a62:76d1:: with SMTP id r200mr2258104pfc.298.1585818958381;
        Thu, 02 Apr 2020 02:15:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls2431750plq.7.gmail; Thu, 02
 Apr 2020 02:15:55 -0700 (PDT)
X-Google-Smtp-Source: APiQypIbkw8HgQ/lWzLNFGQbYiTt5aAtUMJAVRIRPna/0k0C/S40T4HRhLzhnQMWNX5nZjtGAqW4
X-Received: by 2002:a17:902:7042:: with SMTP id h2mr21186plt.118.1585818955774;
        Thu, 02 Apr 2020 02:15:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585818955; cv=none;
        d=google.com; s=arc-20160816;
        b=BlIoMer5WCsHNzyqTQDAIGfZiwvKdA3m1h0M9bB7opjXDYcp/apGyGoip5zfvmbJdU
         3LMVWDregUrY/gabDghgqShRx13Ksw0u3Bgm/s1mKTDXDMLpO24Ns+OQUvwvBaRzXkAt
         MCOlfygpUCfyDQ6NlLqxPLTQ1ZIwTqWRmQR10NGgLx/bJ4rbJ2j8fesyZvSonLloOTs8
         7vOXOVstcRgyahzq4OcaRD2dCcpZtMr2YgcRvG/uBdRl5aWOGtGAtvRX/yda0+lDNeWH
         LGdd4wCtsl2AxhCr15VdQq5OD7TrZafxoaBcABQyn5KnGRQ+kV0MhBHJuQoq/HolVSla
         Jy3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version;
        bh=UBFb1CK4GqrEtSBpoqnuBwyRLfCEqJfdS3ePJjp8ROs=;
        b=wL4cQTueEOhGae3OlgUbLdIKv5jt9+37I4hr0mPp91bk0tUNDz71wYx7aM81Gt3jGZ
         Yy+/GXBrjlqN5jVV3mhLG+gI/QxDY5mn8wJ/wgrKA5eeI6xK1gRViobwzcfwHKc2+Joz
         LZs1MqvIA0Q/P7v2tiIss2SvYNUGNl0BR52LWdDauqWmKd2xG8bTF+aYTqXcgqnyPBdz
         LCrtIxv1uexgP0GzEHR2mlradMXTCF+AQ+7ndakw/oEKU+jEV9A7lBwO7SaFMFFC3fC3
         LZ91k0HGi7vHxzb1YRFB71g/8RM6wP27lYMf4LmcrB0YvlVKj3699syxa2VerKEGPECm
         pXFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.236 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa09-07.prod.phx3.secureserver.net (p3plsmtpa09-07.prod.phx3.secureserver.net. [173.201.193.236])
        by gmr-mx.google.com with ESMTPS id j44si580038pje.0.2020.04.02.02.15.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 02:15:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.236 as permitted sender) client-ip=173.201.193.236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.236 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lj1-f178.google.com ([209.85.208.178])
	by :SMTPAUTH: with ESMTPSA
	id Jvx4jEZti8HYbJvx5jpIPd; Thu, 02 Apr 2020 02:15:55 -0700
X-CMAE-Analysis: v=2.3 cv=BcymLYl2 c=1 sm=1 tr=0
 a=4Z7bLzRdO3NTdMHb7ZukIA==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=cl8xLZFz6L8A:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10
 a=ak5IYKTo5ymBYdhpD5UA:9 a=QEXdDO2ut3YA:10
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-lj1-f178.google.com with SMTP id p10so2476538ljn.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 02:15:55 -0700 (PDT)
X-Gm-Message-State: AGi0PuZwAH5KBVlucpbGNm8FarCdgNGdhqsC33agytwBD9HzykZN/849
	O6eEKfdwiX4x6mBZV22R/bmwFxRm3vyTBlSKx90=
X-Received: by 2002:a2e:8084:: with SMTP id i4mr1394314ljg.185.1585818954014;
 Thu, 02 Apr 2020 02:15:54 -0700 (PDT)
MIME-Version: 1.0
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Thu, 2 Apr 2020 14:45:42 +0530
X-Gmail-Original-Message-ID: <CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
Message-ID: <CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
Subject: Outreachy reminder - final application deadline
To: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfCfOm3vMQ+Mas74YhZczfzieq55gcmyWUDaBTvqpkWDet8BG156Ggl56zV/VAx/zCJt+tuPAtI7/5MKj4P0oGBub+WC6aaE6TnAKde/DIz4HyHz/cnb4
 er9WLVVmkCStksR3Ymkirar4JFCdW2v3yCBHu2bl+YU+SdQeBL6kgiHlI6Wvn9zXJZkFPex6RKzyrWpC6FkT419HsK0CMgBnyAs=

Greeting Outreachy applicants,

Thank you for all your contributions in the Linux Kernel. This is a
reminder for you all that Outreachy's final application deadline is
approaching on April 7, 2020 - 4pm UTC.

Now is the time to record all your contributions and apply for the
projects you're interested in. We would advise you to at least apply
for 2 projects of your choice. And please do not wait to apply on the
day of a deadline. You can always add more contributions until the
deadline. Don't forget to add links to your patches while recording
contributions on the website.

If you have any query, feel free to contact me and project mentors. We
wish you all the best for your applications.

Have a nice day!


Helen Koike and Vaishali Thakkar
Outreachy Linux Kernel Co-coordinator

