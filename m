X-GM-THRID: 6208412714735239168
X-Received: by 10.112.148.202 with SMTP id tu10mr3101135lbb.12.1445511673408;
        Thu, 22 Oct 2015 04:01:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.37.197 with SMTP id a5ls1324672wik.3.canary; Thu, 22 Oct
 2015 04:01:12 -0700 (PDT)
X-Received: by 10.181.11.195 with SMTP id ek3mr3602580wid.7.1445511672775;
        Thu, 22 Oct 2015 04:01:12 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id o3si451318wiz.1.2015.10.22.04.01.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 04:01:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id ll6so112982456wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 04:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=02DDDj9Onx9ZscKijT41XzvbnR7DHLazVf/q1jY8qTw=;
        b=bamWdJujnO9JgOaFmzjqd+d3LMWM1fpLkyKL9aQafJSvySrgeIdnXS0RG9krBw95Nm
         PuWmA3PvY4juJi1bE52fBFG3Yth4Ifx3xNSMc93SFZqWAqjqh191RIutZbgb1loNbR/i
         LMAcj6wn+lUujvaMinO/lX0o49DWgd0BS8FwlA+fRWAR7ufcHpWB2Dp6WF6Mb18dGGIF
         aZevOzdZ12oFcSSTOnRpEI9gjOXdZs/3dteIkhhvOhrlyy59Nf0/up9uYRfoWkjyCPnF
         3fkv+HCY7ipVR6/CphQ36PYy3Xq4yqcTnRJluC4Nd9PYO0Zgnk9z73Ys/r+aRMsms94y
         f3NA==
MIME-Version: 1.0
X-Received: by 10.194.52.6 with SMTP id p6mr18663398wjo.119.1445511672497;
 Thu, 22 Oct 2015 04:01:12 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Thu, 22 Oct 2015 04:01:12 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510221232200.2607@hadrien>
References: <20151022101158.GA17223@ubuntu>
	<alpine.DEB.2.10.1510221232200.2607@hadrien>
Date: Thu, 22 Oct 2015 16:31:12 +0530
Message-ID: <CAKHNQQHxMbQtwVhA8uVkP8uZqX-q_HwSWNmKRPhXwFYsXpve-w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: coreconfigurator:
 Drop unneeded wrapper functions
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 22, 2015 at 4:04 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Thu, 22 Oct 2015, Shivani Bhardwaj wrote:
>
>> Remove the wrapper functions get_address1, get_address2 and get_address3
>> as they are not required and replace their calls by suitable functions.
>
> The existing functions serve two purposes:
>
> 1.  They make clear that an ethernet address is being copied
> 2.  They hide the offsets
>
> To preserve the first property, the kernel has a function for copying
> ethernet addresses.
>
> To preserve the second property, maybe it would be possible to #define
> constants that describe the offsets, if there is any way to figure out
> what they semantically mean.
>
> julia
>

Right. I am thinking of writing one wrapper function instead of three
where I'll pass on an offset each time which will be #defined.
For example,

#define ofs 4
#define c 6

static inline void get_address(u8 *pum8sa, u8 *addr, u8 *offset){
        ether_addr_copy(addr, pum8sa + offset);
}

func()
{
         if(...)
             get_address(data, bssid, ofs);               //for address1
         else if(...)
             get_address(data, bssid, ofs + c);          //for address2
         else
             get_address(data, bssid, ofs + 2*c);              //for address3
}

This will make the work of function clear. Also, offset is not going
to be clear.
Is this going to be a good idea?

Thank you

>> Semantic patch used:
>> @@
>> identifier f,g;
>> @@
>>
>> *f(...) {
>>  g(...); }
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/wilc1000/coreconfigurator.c | 38 ++++++++++-------------------
>>  1 file changed, 13 insertions(+), 25 deletions(-)
>>
>> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
>> index 427adfd..38bc2c4 100644
>> --- a/drivers/staging/wilc1000/coreconfigurator.c
>> +++ b/drivers/staging/wilc1000/coreconfigurator.c
>> @@ -171,38 +171,26 @@ static inline u8 get_from_ds(u8 *header)
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
>> +             /* Extract the MAC Address in 'address2' field of the MAC */
>> +             /* header and update the MAC Address in the allocated 'data'
>> +              * variable. */
>> +             memcpy(data, bssid + 10, 6);
>>       else if (get_to_ds(data) == 1)
>> -             get_address1(data, bssid);
>> +             /* Extract the MAC Address in 'address1' field of the MAC */
>> +             /* header and update the MAC Address in the allocated 'data'
>> +              * variable. */
>> +             memcpy(data, bssid + 4, 6);
>>       else
>> -             get_address3(data, bssid);
>> +             /* Extract the MAC Address in 'address3' field of the MAC */
>> +             /* header and update the MAC Address in the allocated 'data'
>> +              * variable. */
>> +             memcpy(data, bssid + 16, 6);
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
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151022101158.GA17223%40ubuntu.
>> For more options, visit https://groups.google.com/d/optout.
>>

