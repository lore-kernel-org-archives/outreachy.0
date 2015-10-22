X-GM-THRID: 6208412714735239168
X-Received: by 10.180.87.74 with SMTP id v10mr2823530wiz.5.1445518955866;
        Thu, 22 Oct 2015 06:02:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.103 with SMTP id h7ls1318054wiy.46.canary; Thu, 22 Oct
 2015 06:02:35 -0700 (PDT)
X-Received: by 10.180.35.132 with SMTP id h4mr8334782wij.5.1445518955508;
        Thu, 22 Oct 2015 06:02:35 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id hc2si506784wib.3.2015.10.22.06.02.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 06:02:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id p11so30744401wij.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 06:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=6JuaQT7AKrTV7WylLCNLKzjaPKVdwF41jIJ2SsdBCPs=;
        b=kYuSfTsfTNuvANj3Bp+FckBb0OG9ZQET3rTVbdwXzWhz3lf2ZJKlBfPgZHGIMK+JVY
         WWnADHJjj3v1Km4BEMxlDjgj5IMVjAwoSIOphxCc6g81e9pgMHXsQYn7UiJ0hC3t1F7d
         zB/OI7RsuHHsbsIZxEOhGQyBRUODbwY4DwJ/UXGVDBiYtpOWeiP/1bQs9qdA1yoGcyHl
         Pw9wyjmxRNIPZTye90tXTVY88G0ZtzI86SPzyMnTlOkBSxDjqT/Of/rSzCuCphJ3qOrc
         hmNAnQ0VTTCwfYjMxjvuiA0yx7RbvIS2Lkh6g++0ay7/iRRzvXEKZUuFgHubw0ODIQOZ
         pBhQ==
MIME-Version: 1.0
X-Received: by 10.180.189.41 with SMTP id gf9mr16268783wic.95.1445518955343;
 Thu, 22 Oct 2015 06:02:35 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Thu, 22 Oct 2015 06:02:35 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510221459071.2607@hadrien>
References: <20151022125333.GA21176@ubuntu>
	<alpine.DEB.2.10.1510221459071.2607@hadrien>
Date: Thu, 22 Oct 2015 18:32:35 +0530
Message-ID: <CAKHNQQGviA4ZD9Lj9uuyeeL9oCW5YKxceA2U==OMwGvD07vQNw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: coreconfigurator:
 Drop unneeded wrapper functions
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 22, 2015 at 6:31 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:
>
>> Remove the wrapper functions get_address1, get_address2 and get_address3
>> as they are not required and replace their calls by suitable functions.
>
> "not required" and "suitable" are not very precise.  Something like
>
> Replace the wrapper functions ... by the standard kernel function ...
>
> could be better.
>
>> Semantic patch used:
>>
>> @@
>> identifier f,g;
>> @@
>>
>> *f(...) {
>>  g(...); }
>
> It's not clear what the semantic patch was used for.  Actually it was used
> to find the wrapper functions, but not to do the transformation.  This
> could also be more clear.
>
> It could be good to resend.
>
> julia
>

All right. I'm sending v3.
Thank you.

>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/wilc1000/coreconfigurator.c | 48 ++++++++++++++---------------
>>  1 file changed, 23 insertions(+), 25 deletions(-)
>>
>> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
>> index 427adfd..6dfe26d 100644
>> --- a/drivers/staging/wilc1000/coreconfigurator.c
>> +++ b/drivers/staging/wilc1000/coreconfigurator.c
>> @@ -13,8 +13,12 @@
>>  #include "wilc_wlan.h"
>>  #include <linux/errno.h>
>>  #include <linux/slab.h>
>> +#include <linux/etherdevice.h>
>>  #define TAG_PARAM_OFFSET     (MAC_HDR_LEN + TIME_STAMP_LEN + \
>>                                                       BEACON_INTERVAL_LEN + CAP_INFO_LEN)
>> +#define ADDR1 4
>> +#define ADDR2 10
>> +#define ADDR3 16
>>
>>  /* Basic Frame Type Codes (2-bit) */
>>  enum basic_frame_type {
>> @@ -171,38 +175,32 @@ static inline u8 get_from_ds(u8 *header)
>>       return ((header[1] & 0x02) >> 1);
>>  }
>>
>> -/* This function extracts the MAC Address in 'address1' field of the MAC     */
>> -/* header and updates the MAC Address in the allocated 'addr' variable.      */
>> -static inline void get_address1(u8 *pu8msa, u8 *addr)
>> -{
>> -     memcpy(addr, pu8msa + 4, 6);
>> -}
>> -
>> -/* This function extracts the MAC Address in 'address2' field of the MAC     */
>> -/* header and updates the MAC Address in the allocated 'addr' variable.      */
>> -static inline void get_address2(u8 *pu8msa, u8 *addr)
>> -{
>> -     memcpy(addr, pu8msa + 10, 6);
>> -}
>> -
>> -/* This function extracts the MAC Address in 'address3' field of the MAC     */
>> -/* header and updates the MAC Address in the allocated 'addr' variable.      */
>> -static inline void get_address3(u8 *pu8msa, u8 *addr)
>> -{
>> -     memcpy(addr, pu8msa + 16, 6);
>> -}
>> -
>>  /* This function extracts the BSSID from the incoming WLAN packet based on   */
>> -/* the 'from ds' bit, and updates the MAC Address in the allocated 'addr'    */
>> +/* the 'from ds' bit, and updates the MAC Address in the allocated 'data'    */
>>  /* variable.                                                                 */
>>  static inline void get_BSSID(u8 *data, u8 *bssid)
>>  {
>>       if (get_from_ds(data) == 1)
>> -             get_address2(data, bssid);
>> +             /*
>> +              * Extract the MAC Address in 'address2' field of the MAC
>> +              * header and update the MAC Address in the allocated 'data'
>> +              *  variable.
>> +              */
>> +             ether_addr_copy(data, bssid + ADDR2);
>>       else if (get_to_ds(data) == 1)
>> -             get_address1(data, bssid);
>> +             /*
>> +              * Extract the MAC Address in 'address1' field of the MAC
>> +              * header and update the MAC Address in the allocated 'data'
>> +              * variable.
>> +              */
>> +             ether_addr_copy(data, bssid + ADDR1);
>>       else
>> -             get_address3(data, bssid);
>> +             /*
>> +              * Extract the MAC Address in 'address3' field of the MAC
>> +              * header and update the MAC Address in the allocated 'data'
>> +              * variable.
>> +              */
>> +             ether_addr_copy(data, bssid + ADDR3);
>>  }
>>
>>  /* This function extracts the SSID from a beacon/probe response frame        */
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151022125333.GA21176%40ubuntu.
>> For more options, visit https://groups.google.com/d/optout.
>>

