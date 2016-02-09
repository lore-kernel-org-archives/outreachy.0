X-GM-THRID: 6249137798348013568
X-Received: by 10.112.16.34 with SMTP id c2mr3931943lbd.19.1455016113506;
        Tue, 09 Feb 2016 03:08:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.20.35 with SMTP id k35ls715730lfi.77.gmail; Tue, 09 Feb
 2016 03:08:32 -0800 (PST)
X-Received: by 10.112.168.201 with SMTP id zy9mr3919067lbb.23.1455016112926;
        Tue, 09 Feb 2016 03:08:32 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id e130si389495wme.2.2016.02.09.03.08.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 03:08:32 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0MP3gp-1aQ69H0Af1-006KQo; Tue, 09 Feb
 2016 12:08:32 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: Re: [Outreachy kernel] Doubt regarding build warnings
Date: Tue, 09 Feb 2016 12:08:31 +0100
Message-ID: <5477208.ntDhW1kj3a@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <705062da-a84a-41ee-8905-d600ea41529c@googlegroups.com>
References: <ba8ae97e-c7c5-4383-bffc-a5eac3003e1d@googlegroups.com> <6075631.lJNnAgFSZy@wuerfel> <705062da-a84a-41ee-8905-d600ea41529c@googlegroups.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:MiRoaO+1zbkGKPYx2mmo1V43FXgTbr7h62kVpd03UerpQIZyzPE
 FWoSZYU1s9j0HOT/Fosy1EV0gvupw8iyIcAR5lPIeOeaTkLG/kf6h1RBU7W8TnA5NQzupSE
 lHqf5mE8gsGI4iKqdTtbFecL8rFjwwTic3Rf3bEUza00835KDZhybNJ6xnr7zyhuO29ILlP
 pLBt2zKlGPmUhLqU8NgIg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:x+XITrNfH3Q=:sacSOsEDItK3eo6rwSIs4E
 fsSx37sfFBCPiRNAEi7zHxrIb7A7Ia3l8sQ0kI97/JFSs3cic1M7HJutG8rTeiIVqIKV2PK5B
 gLRipt/xi3jTHzXGbnRRXetHvn6jZcq3+UHYwH3MMijsumx4yvaVspOY69OWqKwvfIuPVn4bA
 I1Lm2HbFxJ5RKwAVY2oRhIaR7lBvhxmWeAbHfXn+LJUHEatucLMj6qOWHDo09/G/Rpmv1gYy3
 HCCUJCtz4sUj36gkSd4viZHsnv5OwTi5ihVtgRvbnjS5WnVIRKkKuqSohwSP0cpPjarwzB+kI
 m+Kmz1s+I9krQ468XWsiFNBVQfplthGrbuhQDZVl/AyQTtrZaCoyJ7Aku1tBelHIfkXMLfvgc
 DG5ScsRLngm3fSogZqkdzI9HqKLacH9BdZzSrQ8Fz9/wox1D0LLdsQhEn37jrzPUMMrrIsvJe
 22JVZMfgBcfotTvP5hNKZBM8emgBs1fmHeXEf/VUvBlH+cj4xDQp5DpRSr80cagl6soVtKWXa
 5Ous0GYchmZh0k0yKp6MZowSHizqI6SB88Rh6GadlE+OgiJpKQzfNeZYFHK4McrIig2Zlqt/3
 oI/tuRkOnUMVyHZY0cKYePSwv+JD8XnWOjR7nbi4YomvGxmGxQ/LiyQZTAUu60mvF5/lI+/OI
 E5qKnwUWzJis2HioniiFFmOqihFlXDzBHva5SPSgYa7kcbOMlaD7TrMrT6jkdg/qbJqSFm6My
 7K7k0zguqKbmPliQ

On Tuesday 09 February 2016 01:01:37 Bhumika Goyal wrote:
> Thank you Arnd .I am not getting any warnings with "make drivers/staging". 
> Can I know the reason for previous warnings when I used "make M" ?
> 
> 

The differences are very subtle:

make drivers/staging

   always succeeds, does nothing at all because the directory exists

make drivers/staging/

   descends into that directory to build all the files in it, but does
   not try to link the modules

make M=drivers/staging

   From the output you get, I think this must try to link the modules
   against the previously-build vmlinux file, which for some reason
   fails here. I suggested doing 'make' to rebuild everything including
   vmlinux, so it is up-to-date with your current configuration.

	Arnd

