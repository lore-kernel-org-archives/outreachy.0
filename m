X-GM-THRID: 6670935352020041728
X-Received: by 2002:aa7:87c5:: with SMTP id i5mr5139549pfo.20.1553198171896;
        Thu, 21 Mar 2019 12:56:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a514:: with SMTP id s20ls3463600plq.0.gmail; Thu, 21
 Mar 2019 12:56:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwcBFWCgF1/Snjlnb6IcjiiimEpJEkYoHd1bLhfI49mGGN89Ttsy3MuhekWbVTYMvILnn/L
X-Received: by 2002:a17:902:362:: with SMTP id 89mr5168417pld.172.1553198171183;
        Thu, 21 Mar 2019 12:56:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553198171; cv=none;
        d=google.com; s=arc-20160816;
        b=eOsNq1jcBBtROG6CfAKvOeBQurfQCGSkYhnSM3HRPFEfODiDyFSYhPUXMRUbwnZcgK
         uALly1kJwkIPpJqSTAYlxKgjBvE7qQdq010AFM3Up9oxLmjbs7dE2xBn7XghTEJlZn89
         ZXTS3d0ZhSqQItB4JGZa8uisWTKwOcfFAgOmlKAybSC2WSoei2mUXB7d0xckEduAENGU
         tbeKpzomAMv3r4ri0AGQcJxOd8mmUn0xrxhPLRJp2lFq1egzl1gTMXr6wBoqp8n/RZhO
         I949+DZ892rSsY92TNnWLoYtzE/tENl4HZF0p5koAGLRtcEhFmHgLo/ambqmZm+Sz5Rj
         9tig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8/O4AmgyA0h5mI7yZSxKvx3+s+luFejH+UT1Vilnvag=;
        b=YmW//Q1Fq9hhl1vq9fHdoJ/3iFccNHevh3fX5718LFeKOZzv++KKr+wB1nLmwrMbyP
         Sx8BYL9BrEOSEbMBvRvBVWQjzcbMiyXXfqT+QsPtrW4XdtgtlUmuToXXhP2Iwrhe/bKo
         0mGsotpx/1xhyElJebnKXtTuBdXDOef/TIPgTAcCo9AV5Rkn+mZylIZMQhS/z4k0Ga5H
         CqUBwBDbqxbtq1QC9SJJRa+Tx5SXu14x4p+07oyZOBW13InighfXi1MuZPouONDMGNiE
         rrsHKnch5wXYTeCgwMmduNcWJCzA4Gpv72gztsQDnUpeDbLlvyM4jczNRCqwd9SMFmrf
         s0TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="Avc7/Jr3";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic307-21.consmr.mail.sg3.yahoo.com (sonic307-21.consmr.mail.sg3.yahoo.com. [106.10.241.38])
        by gmr-mx.google.com with ESMTPS id r133si402571pgr.4.2019.03.21.12.56.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:56:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.38 as permitted sender) client-ip=106.10.241.38;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="Avc7/Jr3";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553198169; bh=8/O4AmgyA0h5mI7yZSxKvx3+s+luFejH+UT1Vilnvag=; h=From:To:Cc:Subject:Date:From:Subject; b=Avc7/Jr3tcDq2/caXmCWNXchyCtrs4N3RS0QJgbEMECYYWk39VPVk5A/4cGDKTPY91mnMw1HLJnEibsae5ZPDvRpb0L9+WiQlB4iYFnkbawdOqeL5nSydEyeoXIh6Y6ySHRf+Rt+mvGittPwGAG7mOf76KWqLXyHesP8M0KQoTR/jribqJcfA+SB0AXqHSc7rTk74kAQ8DNP+BAMaKqfItCWs9mIdxqi6PE+zTfGFl+xvG7VCjjZwdPo6wuzqpXr8CXdcE9XssDbwkM/72P7tIXAlTRoglbHW9TYW02l/Ly9ZAKowsAYd3G6DLgU4rJd6SGAtXI9sHBzCtoKrgfAWw==
X-YMail-OSG: 2vElT2gVM1mgqL3w0QMqPa9P7p4JNeCwqD1owLvoUW.KP7EtnbWRaIPHBR6tceV
 bz9s6tdtTS5T0jM3bPPvqwZoO4p3y8U_IwXK4qzL0LjwY3_h7OboXwm87EWkwevSiDgoHLocMsAl
 iveN20PSSkEi3EMEF.M3722V9e09YRp0aQ_474w_lpAVcGfE6VDMErihoMAaiyDjkEAqdBmF7TRe
 xT.GtEgpnoRPVJb7AYrlPYmN8qaOse2GmAbTXqM3spB.Iin9kILobyCmY7rsP5Hx_dyFgK_MMtX_
 Uf3wC1Bm.pn8rQibY0qQxl7hC7FeTcewPyhXtYy3TkxWDlsXyYy0DhVMV10ObHHgPY5AfFSBqqcR
 r_H_XfEfF3bvuR6gep_HO9UF6W1TJQ9OdunB133Wf.MYK6qLfl9WLVyPvgk5x6saz9DuvH8m6oXH
 VMqTjBz2Tmg0OXZRtccayDCBTOE8SpbUFGL_TE_.6Y5ilEqHHjGitaxSw4vjylBhy4EK96PUUPyk
 CE3bE_3ShQvPAiMN1pbAmRjIe9EAItqyoBNY04sM4tEZ7dPTMBsGdEdo2XxeHG5cTfS1NV3JWzEp
 l29fnCJYVg5fTV3NHw9.yWEsDL6BsQ3KDUrY5nEDH0giktesykkBvc3nAl8rSSHeMW4mXSSGTQQD
 NeayKJNQaMbZBlIfb_8Zbv8691VnmmPHl2hZEv7myTagnynCXOTBW3tAzHh73jX7NIlg5wKfrCZH
 s3Jh0giY_hbadB8CSawFQA54OkatMzpUBcxmYIUR_m63njhiYEdn1sLMMdloYm6eAXgIGG9aBqUj
 8cv3gGlFoIrSFhuSCz4scc4yMd27uXW.US6YyoVFlbNe9Ztsj5JTB96SIU2TkcmFWrn6jATQJC3L
 7N8XIOJ60HdUuwxAWX0GEFYC2Vba5iD5cPD5PCM5ZVcUOOKgGcCyh8NRxlZJNGZyIB7_JUExDc9a
 XWu8Zmgui_eW18O8wnqOYz0eRTLjC8mPStSXbaM4zA1OYEOApxrqus6vUl8mojabvcARXgt2eNxz
 yTwrojO8Zfq2fkACXjCZb70PpRsFw8QMLPyZWce.U1_4NlhFsYF0kZcBhVINCB.DHdn54FoemGkx
 dFgL.bg--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 19:56:09 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp425.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 04ac275525472a2e4b5c80b6b2590191;
          Thu, 21 Mar 2019 19:56:05 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	ajay.kathat@microchip.com,
	adham.abozaeid@microchip.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH v4 0/2] staging: wilc1000: Remove local return variables
Date: Fri, 22 Mar 2019 01:25:54 +0530
Message-Id: <20190321195556.4802-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary local return variables in wilc1000. Issues found with
Coccinelle using ret.cocci.

Nishka Dasgupta (2):
  staging: wilc1000: Remove return variable from host_interface.c
  staging: wilc1000: Remove return variables from wilc_spi.c

 drivers/staging/wilc1000/host_interface.c | 20 ++++++--------------
 drivers/staging/wilc1000/wilc_spi.c       | 13 +++++--------
 2 files changed, 11 insertions(+), 22 deletions(-)

-- 
Changes in v4:
- Remove braces around single-statement if-block

2.19.1


