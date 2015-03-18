X-GM-THRID: 8658120343552
Date: Wed, 18 Mar 2015 06:05:16 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: darshanapadmadas@gmail.com
Message-Id: <c163a2cd-36f7-440f-8857-93eeace05b5c@googlegroups.com>
In-Reply-To: <20150318101945.GB5422@kroah.com>
References: <cover.1426533157.git.darshanapadmadas@gmail.com>
 <20150318101945.GB5422@kroah.com>
Subject: Re: [Outreachy kernel] [PATCH 0/5] Replace memcpy with
 ether_addr_copy and fix checkpatch warning
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_203_976519870.1426683916451"
X-Google-Token: EIzwpagFA-UKFxYUVBg0
X-Google-IP: 182.19.48.18

------=_Part_203_976519870.1426683916451
Content-Type: multipart/alternative; 
	boundary="----=_Part_204_1299424716.1426683916451"

------=_Part_204_1299424716.1426683916451
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Sorry, about that. Have sent v2 for patches 1/5 and 2/5 that broke the 
build.

On Wednesday, March 18, 2015 at 3:49:48 PM UTC+5:30, gregkh wrote:
>
> On Tue, Mar 17, 2015 at 12:48:10AM +0530, Darshana Padmadas wrote: 
> > This patch set replaces memcpy with ether_addr_copy if the 
> > addresses of the structures are aligned. Structure layout is 
> > shown by using the Pahole tool. 
> > 
> > This patch set fixes the following warning reported by checkpatch: 
> > WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet 
> addresses are __aligned(2) 
> > 
> > Darshana Padmadas (5): 
> >   Staging: rtl8192e: Replace memcpy with ether_addr_copy 
> >   Staging: rtl8192e: Use ether_addr_copy instead of memcpy 
> >   Staging: rtl8192e: Use ether_addr_copy replacing memcpy 
> >   Staging: rtl8192e: Use ether_addr_copy for aligned addresses 
> >   Staging: rtl8192e: replace memcpy with ether_addr_copy for aligned 
> >     structures 
> > 
> >  drivers/staging/rtl8192e/rtl819x_BAProc.c    |  4 ++-- 
> >  drivers/staging/rtl8192e/rtllib_crypt_tkip.c | 10 ++++---- 
> >  drivers/staging/rtl8192e/rtllib_rx.c         | 34 
> ++++++++++++++-------------- 
> >  drivers/staging/rtl8192e/rtllib_softmac.c    | 12 +++++----- 
> >  drivers/staging/rtl8192e/rtllib_tx.c         |  6 ++--- 
> >  5 files changed, 33 insertions(+), 33 deletions(-) 
>
> You did not test build these patches, they break the build horribly :( 
>
> ALWAYS test-build your patches before sending them out, it's rude to 
> have to have other people find problems with them. 
>
> thanks, 
>
> greg k-h 
>

------=_Part_204_1299424716.1426683916451
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Sorry, about that. Have sent v2 for patches 1/5 and 2/5 that broke the build.<br><br>On Wednesday, March 18, 2015 at 3:49:48 PM UTC+5:30, gregkh wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Tue, Mar 17, 2015 at 12:48:10AM +0530, Darshana Padmadas wrote:
<br>&gt; This patch set replaces memcpy with ether_addr_copy if the 
<br>&gt; addresses of the structures are aligned. Structure layout is 
<br>&gt; shown by using the Pahole tool.
<br>&gt; 
<br>&gt; This patch set fixes the following warning reported by checkpatch:
<br>&gt; WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2)
<br>&gt; 
<br>&gt; Darshana Padmadas (5):
<br>&gt; &nbsp; Staging: rtl8192e: Replace memcpy with ether_addr_copy
<br>&gt; &nbsp; Staging: rtl8192e: Use ether_addr_copy instead of memcpy
<br>&gt; &nbsp; Staging: rtl8192e: Use ether_addr_copy replacing memcpy
<br>&gt; &nbsp; Staging: rtl8192e: Use ether_addr_copy for aligned addresses
<br>&gt; &nbsp; Staging: rtl8192e: replace memcpy with ether_addr_copy for aligned
<br>&gt; &nbsp; &nbsp; structures
<br>&gt; 
<br>&gt; &nbsp;drivers/staging/rtl8192e/<wbr>rtl819x_BAProc.c &nbsp; &nbsp;| &nbsp;4 ++--
<br>&gt; &nbsp;drivers/staging/rtl8192e/<wbr>rtllib_crypt_tkip.c | 10 ++++----
<br>&gt; &nbsp;drivers/staging/rtl8192e/<wbr>rtllib_rx.c &nbsp; &nbsp; &nbsp; &nbsp; | 34 ++++++++++++++--------------
<br>&gt; &nbsp;drivers/staging/rtl8192e/<wbr>rtllib_softmac.c &nbsp; &nbsp;| 12 +++++-----
<br>&gt; &nbsp;drivers/staging/rtl8192e/<wbr>rtllib_tx.c &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp;6 ++---
<br>&gt; &nbsp;5 files changed, 33 insertions(+), 33 deletions(-)
<br>
<br>You did not test build these patches, they break the build horribly :(
<br>
<br>ALWAYS test-build your patches before sending them out, it's rude to
<br>have to have other people find problems with them.
<br>
<br>thanks,
<br>
<br>greg k-h
<br></blockquote></div>
------=_Part_204_1299424716.1426683916451--

------=_Part_203_976519870.1426683916451--

