X-GM-THRID: 6393675902317756416
X-Received: by 10.99.9.129 with SMTP id 123mr2733429pgj.120.1488971499214;
        Wed, 08 Mar 2017 03:11:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.117.143 with SMTP id y137ls3984135itc.9.canary-gmail; Wed,
 08 Mar 2017 03:11:38 -0800 (PST)
X-Received: by 10.107.198.201 with SMTP id w192mr2038672iof.42.1488971498333;
        Wed, 08 Mar 2017 03:11:38 -0800 (PST)
Received: by 10.202.91.3 with SMTP id p3msoib;
        Wed, 8 Mar 2017 02:21:47 -0800 (PST)
X-Received: by 10.99.146.77 with SMTP id s13mr2565564pgn.106.1488968507227;
        Wed, 08 Mar 2017 02:21:47 -0800 (PST)
Return-Path: <abbotti@mev.co.uk>
Received: from smtprelay.hostedemail.com (smtprelay0047.hostedemail.com. [216.40.44.47])
        by gmr-mx.google.com with ESMTPS id e196si618233itc.2.2017.03.08.02.21.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 02:21:47 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.47 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) client-ip=216.40.44.47;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.47 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) smtp.mailfrom=abbotti@mev.co.uk
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 919BA6A689;
	Wed,  8 Mar 2017 10:21:46 +0000 (UTC)
X-Session-Marker: 69616E406162626F74742E6F7267
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,abbotti@mev.co.uk,:::::::::::::::::::,RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1261:1263:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1541:1593:1594:1683:1711:1730:1747:1777:1792:1801:2194:2199:2393:2525:2553:2560:2563:2612:2682:2685:2859:2933:2937:2939:2942:2945:2947:2951:2954:3000:3022:3138:3139:3140:3141:3142:3352:3865:3867:3871:3872:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4605:5007:7514:7652:9025:10004:10400:10848:11026:11232:11658:11914:12043:12296:12438:12555:12740:12760:12895:13069:13095:13311:13357:14096:14097:14181:14571:14685:14721:14764:14777:21080:21433:21451:30021:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: screw31_49734d535b44f
X-Filterd-Recvd-Size: 2340
Received: from [10.0.0.53] (unknown [81.133.34.160])
	(Authenticated sender: ian@abbott.org)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Wed,  8 Mar 2017 10:21:44 +0000 (UTC)
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: rtl8192u: Replace "is is"
 with "is"
To: Julia Lawall <julia.lawall@lip6.fr>,
 simran singhal <singhalsimran0@gmail.com>
References: <1488643671-24758-1-git-send-email-singhalsimran0@gmail.com>
 <1488643671-24758-2-git-send-email-singhalsimran0@gmail.com>
 <alpine.DEB.2.20.1703041718360.2072@hadrien>
Cc: hsweeten@visionengravers.com, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, johan@kernel.org,
 dtwlin@gmail.com, outreachy-kernel@googlegroups.com,
 greybus-dev@lists.linaro.org
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <88b0f46b-fbaf-8931-0574-e0f9a03f150d@mev.co.uk>
Date: Wed, 8 Mar 2017 10:21:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1703041718360.2072@hadrien>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/03/17 16:18, Julia Lawall wrote:
>
>
> On Sat, 4 Mar 2017, simran singhal wrote:
>
>> This patch replace "is is " with "is". The replacement couldn't be
>> automated because sometimes the first "is" was meant to be another
>> word.
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>  drivers/staging/rtl8192u/r819xU_cmdpkt.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
>> index 3e0731b..231be8f 100644
>> --- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
>> +++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
>> @@ -495,7 +495,7 @@ u32 cmpk_message_handle_rx(struct net_device *dev,
>>  	u8			element_id;
>>  	u8			*pcmd_buff;
>>
>> -	/* 0. Check inpt arguments. If is is a command queue message or
>> +	/* 0. Check inpt arguments. If is a command queue message or
>
> I can't figure out how to parse "If is a command...".

I think it should be "If it is a command...".

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

