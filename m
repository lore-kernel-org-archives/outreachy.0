X-GM-THRID: 6671951385382092800
X-Received: by 2002:a6b:db04:: with SMTP id t4mr14153420ioc.243.1553434735990;
        Sun, 24 Mar 2019 06:38:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:90d:: with SMTP id 13ls3912459itm.2.canary-gmail; Sun,
 24 Mar 2019 06:38:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyTVFy0v7wuKNz+mauGcg3FCD7gCcga1DqCsAcI0YjlsG00MBkPLerM4ULQFtcKnyLcxjOx
X-Received: by 2002:a24:94cd:: with SMTP id j196mr5460570ite.159.1553434734854;
        Sun, 24 Mar 2019 06:38:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553434734; cv=none;
        d=google.com; s=arc-20160816;
        b=CevqfTe9vJ1Cg0+CC4G+Sn3j+6SxOhnp0PKRVgsm3gZ014ALPOwJM3z+Z4H2u2cbPA
         SMyIKzX4Ggo8BsobNXTVvJdLoeGK9McqhPwWArJR9MS7wZNdTOduXWPQPXrD2NhBhWmZ
         YipVbPPc7T21rDs4veXpqL0nQGANI3ylqzRO5cSidIOaIVS98rB0v89z7z4PaXaFwv+N
         Ij6JPfNRnCj1vURUfAia4ZFtDvN8Ua7ojoKPdmQgMux6RGNFqgmp+5tdHczLblG/a5mL
         XjmBXhR3kbJX2Wp22WKMvp2P2enNCWM3oEDTaqczYc9t8TCLC0buAGed4YrXT9a2yYhb
         UpEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version;
        bh=TaKz8dI9Zy8PWjSwOHPpzbU1ucXF8DStVr9x4Ll4PRM=;
        b=O6wTvL2rb/ZslpebPIdzfFfWQjtxiu8rIhoRakKsU/I1yoXHf9C8lUUk2Om9gNP+67
         U4UtjeB8TYmfV+TEspIL/fXe6pUApxDP0ir8kI52EiAdwGJbXJRwcYEFR4i2Zr/ToZou
         HIUSpPShthyEFGCnXTZj5iRwn3TX/r0Ba/o9TZAkXY8+OTQkXeO4n+mDhaAGxSKA3aCR
         7ggql2/s2DNq2hri21uH5MCVGlNZ6PWJJ5kB5k211LesytrnQ5+15MEkMWbEDBx9DQ9r
         aj9EYeggXeASwbCNMvWiKYXpQNtS9rOdVFfV15BfPyIVuvApP2g7oogg6mf/v5ZcQxDw
         J4pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.231 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa12-02.prod.phx3.secureserver.net (p3plsmtpa12-02.prod.phx3.secureserver.net. [68.178.252.231])
        by gmr-mx.google.com with ESMTPS id n6si543287iod.1.2019.03.24.06.38.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 06:38:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.231 as permitted sender) client-ip=68.178.252.231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.231 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lj1-f174.google.com ([209.85.208.174])
	by :SMTPAUTH: with ESMTPSA
	id 83Kuhm9r28J8p83KvhbLIw; Sun, 24 Mar 2019 06:38:53 -0700
Received: by mail-lj1-f174.google.com with SMTP id q66so5566379ljq.7
        for <outreachy-kernel@googlegroups.com>; Sun, 24 Mar 2019 06:38:53 -0700 (PDT)
X-Gm-Message-State: APjAAAXh5T4ZYgaOisDn+bgpzfkwhgrpyZ8ki/OXSsXsq0lWRTg68lhS
	3McH9L5Dz3PcQ+g5LcAGMHGYkIl6KnWGqP6W3CI=
X-Received: by 2002:a2e:9655:: with SMTP id z21mr10571739ljh.60.1553434732177;
 Sun, 24 Mar 2019 06:38:52 -0700 (PDT)
MIME-Version: 1.0
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Sun, 24 Mar 2019 19:08:40 +0530
X-Gmail-Original-Message-ID: <CAK-LDbKFxTUL8ed0BqDHrCcK+ZchY28h2aES6+39OC=2YdkUsg@mail.gmail.com>
Message-ID: <CAK-LDbKFxTUL8ed0BqDHrCcK+ZchY28h2aES6+39OC=2YdkUsg@mail.gmail.com>
Subject: Outreachy Application
To: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfFgCM8zrfyXea16OuiaEZxZdzEwHvYIjVfGydNrUQnOqxmvcDOzDGDHJYP2R720WrZ8XKXV/JIEvc1j1xnlSlNkbenGCYPfP0NrlRvdm1Z5wcgzXQiIa
 XKucrFy8uPPP/H+DZPjvsqtI28jaN/cGUvxR+ObNhtkcY3glcyutjJZgNy8raeDeHkkXGWG+J5WdWyBOSkU+8khlNkG8EOhoSVs=

Hello Outreachy Applicants,

Thanks for your interest in Linux Kernel and contributing to Linux
Kernel over the past few weeks. I have received bunch of queries
regarding the application process so here are a bunch of points
regarding the same:

1. Some of our projects have March 26, 2019 as a deadline so if you
wish to apply for those projects please make sure that you fill out
your application before March 26, 2019 and have recorded contributions
accordingly.

2. When it comes recording your contributions, it's ok if you don't
record separate contribution for each cleanup patch. You can group
them according to the changes or can specify all of them in one. As
far as we have links to your patches, it should be fine. So, please
make sure that you have put links to your patches.

3. In the 'community specific question' , please mention your project
preferences. So for example, if you have applied for project X and
project Y in Linux Kernel and you prefer to work on project X over Y,
write like the following:

Project Preferences:

1. Project X
2. Project Y

4. Feel free to ask mentors if they want you to put any specific
information in the application related to their projects.

I hope this covers most of your queries. If you still have any
questions, please feel free to email me or ping me on IRC. My nickname
is 'vaishali' on both Freenode and OFTC.

