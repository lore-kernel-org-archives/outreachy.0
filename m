X-GM-THRID: 6389629700764860416
X-Received: by 10.157.80.33 with SMTP id a33mr2454910oth.89.1488977872511;
        Wed, 08 Mar 2017 04:57:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.64.142 with SMTP id n136ls976397ita.2.gmail; Wed, 08 Mar
 2017 04:57:51 -0800 (PST)
X-Received: by 10.99.111.6 with SMTP id k6mr2822231pgc.131.1488977871527;
        Wed, 08 Mar 2017 04:57:51 -0800 (PST)
Return-Path: <abbotti@mev.co.uk>
Received: from smtprelay.hostedemail.com (smtprelay0055.hostedemail.com. [216.40.44.55])
        by gmr-mx.google.com with ESMTPS id g205si1258768ita.2.2017.03.08.04.57.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 04:57:51 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.55 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) client-ip=216.40.44.55;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.55 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) smtp.mailfrom=abbotti@mev.co.uk
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id BE4AA9EA16;
	Wed,  8 Mar 2017 12:57:50 +0000 (UTC)
X-Session-Marker: 69616E406162626F74742E6F7267
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,abbotti@mev.co.uk,:::::::::::,RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1261:1263:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1542:1593:1594:1683:1711:1730:1747:1777:1792:1801:2393:2525:2560:2563:2612:2682:2685:2859:2933:2937:2939:2942:2945:2947:2951:2954:3000:3022:3138:3139:3140:3141:3142:3353:3865:3870:3872:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4362:4605:5007:7514:7652:7903:9025:10004:10400:10848:11026:11232:11473:11657:11658:11914:12043:12296:12438:12555:12740:12760:12895:12986:14096:14097:14181:14571:14685:14721:21080:21451:30021:30054,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: pies04_7e8ae9ef6702c
X-Filterd-Recvd-Size: 3034
Received: from [10.0.0.53] (unknown [81.133.34.160])
	(Authenticated sender: ian@abbott.org)
	by omf09.hostedemail.com (Postfix) with ESMTPA;
	Wed,  8 Mar 2017 12:57:49 +0000 (UTC)
Subject: Re: [PATCH 6/6] staging: comedi: Using macro DIV_ROUND_UP
To: simran singhal <singhalsimran0@gmail.com>
References: <20170221182826.GA31819@singhal-Inspiron-5558>
Cc: hsweeten@visionengravers.com, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <f49d7b55-a857-763c-4143-c6c5a43fc836@mev.co.uk>
Date: Wed, 8 Mar 2017 12:57:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <20170221182826.GA31819@singhal-Inspiron-5558>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 21/02/17 18:28, simran singhal wrote:
> The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
> It clarifies the divisor calculations. This occurence was detected using
> the coccinelle script:
>
> @@
> expression e1;
> expression e2;
> @@
> (
> - ((e1) + e2 - 1) / (e2)
> + DIV_ROUND_UP(e1,e2)
> |
> - ((e1) + (e2 - 1)) / (e2)
> + DIV_ROUND_UP(e1,e2)
> )
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/comedi/drivers/addi_apci_3xxx.c | 2 +-
>  drivers/staging/comedi/drivers/cb_pcidas64.c    | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/addi_apci_3xxx.c b/drivers/staging/comedi/drivers/addi_apci_3xxx.c
> index b6af3eb..82c2211 100644
> --- a/drivers/staging/comedi/drivers/addi_apci_3xxx.c
> +++ b/drivers/staging/comedi/drivers/addi_apci_3xxx.c
> @@ -502,7 +502,7 @@ static int apci3xxx_ai_ns_to_timer(struct comedi_device *dev,
>  			timer = *ns / base;
>  			break;
>  		case CMDF_ROUND_UP:
> -			timer = (*ns + base - 1) / base;
> +			timer = DIV_ROUND_UP(*ns, base);
>  			break;
>  		}
>
> diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
> index efbf277..3b98193 100644
> --- a/drivers/staging/comedi/drivers/cb_pcidas64.c
> +++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
> @@ -2007,7 +2007,7 @@ static unsigned int get_divisor(unsigned int ns, unsigned int flags)
>
>  	switch (flags & CMDF_ROUND_MASK) {
>  	case CMDF_ROUND_UP:
> -		divisor = (ns + TIMER_BASE - 1) / TIMER_BASE;
> +		divisor = DIV_ROUND_UP(ns, TIMER_BASE);
>  		break;
>  	case CMDF_ROUND_DOWN:
>  		divisor = ns / TIMER_BASE;
>

Thanks.  Ideally, this should be split into two patches, one for each 
driver module, but I guess we can live with a single patch.  (I don't 
know about the other 5 patches in this series.)

Reviewed-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

