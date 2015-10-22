X-GM-THRID: 6208412714735239168
X-Received: by 10.112.209.73 with SMTP id mk9mr3605148lbc.14.1445517220409;
        Thu, 22 Oct 2015 05:33:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.166.200 with SMTP id p191ls290106lfe.37.gmail; Thu, 22 Oct
 2015 05:33:39 -0700 (PDT)
X-Received: by 10.112.147.7 with SMTP id tg7mr3627854lbb.16.1445517219669;
        Thu, 22 Oct 2015 05:33:39 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id em5si215893wib.2.2015.10.22.05.33.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 05:33:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id fx6so129321239wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 05:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=D/KcSTxPsC//AgfUwqkwHllrJA85PMRs467MfeQ+3bQ=;
        b=j+T39QCN9hufoSOalxApA8RjuU+z+qStZs82X1GugNFJwK7Hks0QOC+oG8Gi0c/zpL
         dTuo9fa5aqmjzhd98tj/luyXN7Vj7l5o1RgWQRRvxwZLJ03Y4i7LQ/cScXm5FMtYtibe
         UGAAENhqqkdje3iX3EFl8mTktn0EyIQDbrTRwoTov8bFa5yzRWpDWw8a6zMkG/WPRQuL
         SGcxwRAq8qHdmwG3tg2ym0igJRsLI/v5FDtx/rLlU4oANx4RerdNhaWRsUvVe59mUsfm
         zVuM2yKHzRIi0mtz6dg+XUy/AdHbcW/YQlcqy6HF665Jn1J7rO6lZTjnGgXc5KkHHAXg
         XagQ==
MIME-Version: 1.0
X-Received: by 10.180.38.13 with SMTP id c13mr37886571wik.48.1445517219537;
 Thu, 22 Oct 2015 05:33:39 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Thu, 22 Oct 2015 05:33:39 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510221430190.2607@hadrien>
References: <20151022101158.GA17223@ubuntu>
	<alpine.DEB.2.10.1510221232200.2607@hadrien>
	<CAKHNQQHxMbQtwVhA8uVkP8uZqX-q_HwSWNmKRPhXwFYsXpve-w@mail.gmail.com>
	<alpine.DEB.2.10.1510221310400.2607@hadrien>
	<CAKHNQQHP7dpLZdz6E=CC+ziN4df1Cdtb7Es-qc2KCFVnXrpF6w@mail.gmail.com>
	<alpine.DEB.2.10.1510221342290.2607@hadrien>
	<CAKHNQQE-rMmuZ-UyzLyYkaS4kcT7UMqLRec-kzhKODA+zX8bAw@mail.gmail.com>
	<alpine.DEB.2.10.1510221430190.2607@hadrien>
Date: Thu, 22 Oct 2015 18:03:39 +0530
Message-ID: <CAKHNQQFTZtBPjC7=ffib8iORubFKSo_B0GNKvJSbUXuGx6ryUQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: coreconfigurator:
 Drop unneeded wrapper functions
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 22, 2015 at 6:00 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:
>
>> On Thu, Oct 22, 2015 at 5:13 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:
>> >
>> >> On Thu, Oct 22, 2015 at 4:43 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >> > On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:
>> >> >
>> >> >> On Thu, Oct 22, 2015 at 4:04 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >> >> > On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:
>> >> >> >
>> >> >> >> Remove the wrapper functions get_address1, get_address2 and get_address3
>> >> >> >> as they are not required and replace their calls by suitable functions.
>> >> >> >
>> >> >> > The existing functions serve two purposes:
>> >> >> >
>> >> >> > 1.  They make clear that an ethernet address is being copied
>> >> >> > 2.  They hide the offsets
>> >> >> >
>> >> >> > To preserve the first property, the kernel has a function for copying
>> >> >> > ethernet addresses.
>> >> >> >
>> >> >> > To preserve the second property, maybe it would be possible to #define
>> >> >> > constants that describe the offsets, if there is any way to figure out
>> >> >> > what they semantically mean.
>> >> >> >
>> >> >> > julia
>> >> >> >
>> >> >>
>> >> >> Right. I am thinking of writing one wrapper function instead of three
>> >> >> where I'll pass on an offset each time which will be #defined.
>> >> >> For example,
>> >> >>
>> >> >> #define ofs 4
>> >> >> #define c 6
>> >> >
>> >> > #define things should always be in all (or at least mostly) capital
>> >> > letters.
>> >> >
>> >> >> static inline void get_address(u8 *pum8sa, u8 *addr, u8 *offset){
>> >> >>         ether_addr_copy(addr, pum8sa + offset);
>> >> >> }
>> >> >
>> >> > I don't think this is the best idea.  ether_addr_copy is something that is
>> >> > easily understandable to someone reading the code.  get_address, on the
>> >> > other hand, could be anything.  If you can find meaningful names for the
>> >> > offsets, then it would be better to say eg:
>> >> >
>> >> > ether_addr_copy(addr, pum8sa + NAME1)
>> >> >
>> >> > julia
>> >> >
>> >>
>> >> #define NAME1 4
>> >> #define NAME2 10
>> >> #define NAME3 16
>> >
>> > Sorry, NAME was just supposed to be a metavariable, that you could fill in
>> > with something appropriate.  From the comments in the code it seems like
>> > it should be ADDRESS1, ADDRESS2, etc.
>> >
>> > julia
>> >
>> >
>>
>> Yes, I understand that. I was just presenting a prototype. :)
>> I was thinking of ADDR1, ADDR2.. But, ADDRESS1, ADDRESS2,.. would be fine too.
>
> Either way should be OK.
>
> julia
>
Thanks. I'm sending v2.
I'm getting implicit function declaration error for ether_addr_copy
function. Can it be ignored?

>>
>> Thank you, Julia! :)
>>
>> >>
>> >> func()
>> >> {
>> >>          if(...)
>> >>             ether_addr_copy(addr, pum8sa + NAME1);               //for address1
>> >>          else if(...)
>> >>              ether_addr_copy(addr, pum8sa + NAME2));          //for address2
>> >>          else
>> >>              ether_addr_copy(addr, pum8sa + NAME3);              //for address3
>> >> }
>> >>
>> >> Like this?
>> >>
>> >> >> func()
>> >> >> {
>> >> >>          if(...)
>> >> >>              get_address(data, bssid, ofs);               //for address1
>> >> >>          else if(...)
>> >> >>              get_address(data, bssid, ofs + c);          //for address2
>> >> >>          else
>> >> >>              get_address(data, bssid, ofs + 2*c);              //for address3
>> >> >> }
>> >> >>
>> >> >> This will make the work of function clear. Also, offset is not going
>> >> >> to be clear.
>> >> >> Is this going to be a good idea?
>> >> >>
>> >> >> Thank you
>> >> >>
>> >> >> >> Semantic patch used:
>> >> >> >> @@
>> >> >> >> identifier f,g;
>> >> >> >> @@
>> >> >> >>
>> >> >> >> *f(...) {
>> >> >> >>  g(...); }
>> >> >> >>
>> >> >> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> >> >> >> ---
>> >> >> >>  drivers/staging/wilc1000/coreconfigurator.c | 38 ++++++++++-------------------
>> >> >> >>  1 file changed, 13 insertions(+), 25 deletions(-)
>> >> >> >>
>> >> >> >> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
>> >> >> >> index 427adfd..38bc2c4 100644
>> >> >> >> --- a/drivers/staging/wilc1000/coreconfigurator.c
>> >> >> >> +++ b/drivers/staging/wilc1000/coreconfigurator.c
>> >> >> >> @@ -171,38 +171,26 @@ static inline u8 get_from_ds(u8 *header)
>> >> >> >>       return ((header[1] & 0x02) >> 1);
>> >> >> >>  }
>> >> >> >>
>> >> >> >> -/* This function extracts the MAC Address in 'address1' field of the MAC     */
>> >> >> >> -/* header and updates the MAC Address in the allocated 'addr' variable.      */
>> >> >> >> -static inline void get_address1(u8 *pu8msa, u8 *addr)
>> >> >> >> -{
>> >> >> >> -     memcpy(addr, pu8msa + 4, 6);
>> >> >> >> -}
>> >> >> >> -
>> >> >> >> -/* This function extracts the MAC Address in 'address2' field of the MAC     */
>> >> >> >> -/* header and updates the MAC Address in the allocated 'addr' variable.      */
>> >> >> >> -static inline void get_address2(u8 *pu8msa, u8 *addr)
>> >> >> >> -{
>> >> >> >> -     memcpy(addr, pu8msa + 10, 6);
>> >> >> >> -}
>> >> >> >> -
>> >> >> >> -/* This function extracts the MAC Address in 'address3' field of the MAC     */
>> >> >> >> -/* header and updates the MAC Address in the allocated 'addr' variable.      */
>> >> >> >> -static inline void get_address3(u8 *pu8msa, u8 *addr)
>> >> >> >> -{
>> >> >> >> -     memcpy(addr, pu8msa + 16, 6);
>> >> >> >> -}
>> >> >> >> -
>> >> >> >>  /* This function extracts the BSSID from the incoming WLAN packet based on   */
>> >> >> >> -/* the 'from ds' bit, and updates the MAC Address in the allocated 'addr'    */
>> >> >> >> +/* the 'from ds' bit, and updates the MAC Address in the allocated 'data'    */
>> >> >> >>  /* variable.                                                                 */
>> >> >> >>  static inline void get_BSSID(u8 *data, u8 *bssid)
>> >> >> >>  {
>> >> >> >>       if (get_from_ds(data) == 1)
>> >> >> >> -             get_address2(data, bssid);
>> >> >> >> +             /* Extract the MAC Address in 'address2' field of the MAC */
>> >> >> >> +             /* header and update the MAC Address in the allocated 'data'
>> >> >> >> +              * variable. */
>> >> >> >> +             memcpy(data, bssid + 10, 6);
>> >> >> >>       else if (get_to_ds(data) == 1)
>> >> >> >> -             get_address1(data, bssid);
>> >> >> >> +             /* Extract the MAC Address in 'address1' field of the MAC */
>> >> >> >> +             /* header and update the MAC Address in the allocated 'data'
>> >> >> >> +              * variable. */
>> >> >> >> +             memcpy(data, bssid + 4, 6);
>> >> >> >>       else
>> >> >> >> -             get_address3(data, bssid);
>> >> >> >> +             /* Extract the MAC Address in 'address3' field of the MAC */
>> >> >> >> +             /* header and update the MAC Address in the allocated 'data'
>> >> >> >> +              * variable. */
>> >> >> >> +             memcpy(data, bssid + 16, 6);
>> >> >> >>  }
>> >> >> >>
>> >> >> >>  /* This function extracts the SSID from a beacon/probe response frame        */
>> >> >> >> --
>> >> >> >> 2.1.0
>> >> >> >>
>> >> >> >> --
>> >> >> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> >> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> >> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> >> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151022101158.GA17223%40ubuntu.
>> >> >> >> For more options, visit https://groups.google.com/d/optout.
>> >> >> >>
>> >> >>
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQHP7dpLZdz6E%3DCC%2BziN4df1Cdtb7Es-qc2KCFVnXrpF6w%40mail.gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQE-rMmuZ-UyzLyYkaS4kcT7UMqLRec-kzhKODA%2BzX8bAw%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

