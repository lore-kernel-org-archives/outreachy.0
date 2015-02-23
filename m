X-GM-THRID: 2824268152832
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ebc4acd0e82739d0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.207.230 with SMTP id n66mr13307807yho.30.1424719980812;
        Mon, 23 Feb 2015 11:33:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.7 with SMTP id v7ls2549713qge.9.gmail; Mon, 23 Feb
 2015 11:33:00 -0800 (PST)
X-Received: by 10.236.53.10 with SMTP id f10mr13039732yhc.17.1424719980658;
        Mon, 23 Feb 2015 11:33:00 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x22c.google.com (mail-qc0-x22c.google.com. [2607:f8b0:400d:c01::22c])
        by gmr-mx.google.com with ESMTPS id ba9si6217427qcb.0.2015.02.23.11.33.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:33:00 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22c as permitted sender) client-ip=2607:f8b0:400d:c01::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22c as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x22c.google.com with SMTP id r5so12868721qcx.13
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:33:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=givIG1p2Itwo0k/lMUc4Ko8I760/G5xNxveAQaBQbDI=;
        b=FAKelOU3/MMXbyJ32he0v7VamiC19J3VdN9ME0tfsktxSu9uSb7t8CRwgzdY2l01BY
         E+Twn7ObuE2WgZ1CXY64RZXtXdeLQwXAzoq3ipJP0X5eQy2y4twInk0zIhB646BE2/4H
         FD1qa3GK0cIedjP7WR6gnW6pZ9GV45AwB3Q3hidx3uokzgFzzEmGoqvuzTUtYpG/U8EO
         vs8Z9Ut6X/wQW5X7F72Ib2BK2m4njGMk+KoQJ/+BG/64+ERN0oa87yJkAbGBvcU9TKm3
         WL9FGR9hHVK6VsGDlaTS5OiJ9Xc/zo8qRMCTr6m6j1kBrC4Lu3csqi7iN6l+wAkrPQb6
         Gpmw==
X-Received: by 10.140.233.84 with SMTP id e81mr1312951qhc.94.1424719980561;
        Mon, 23 Feb 2015 11:33:00 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id b8sm15816559qai.21.2015.02.23.11.32.59
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:32:59 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB806A.2060002@gmail.com>
Date: Mon, 23 Feb 2015 14:32:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Vatika Harlalka <vatikaharlalka@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Changed array
 and loop construct
References: <20150223140238.GA11856@gmail.com>
In-Reply-To: <20150223140238.GA11856@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 09:02, Vatika Harlalka wrote:
> This function only required the array from the 14th element
> onwards. Therefore, the array size is reduced and the loop
> counter is modified so as to start from 0.
> Also, the assignment of variable place is redundant as it is
> initialized again in the loop.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/phy.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
> index 3f663fe..e005150 100644
> --- a/drivers/staging/rtl8188eu/hal/phy.c
> +++ b/drivers/staging/rtl8188eu/hal/phy.c
> @@ -386,19 +386,18 @@ void phy_sw_chnl(struct adapter *adapt, u8 channel)
>  
>  static u8 get_right_chnl_for_iqk(u8 chnl)
>  {
> +	u8 place;
>  	u8 channel_all[ODM_TARGET_CHNL_NUM_2G_5G] = {
                       ^^^^^^^^^^^^^^^^^^^^^^^^^

> -		1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,
>  		36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64,
>  		100, 102, 104, 106, 108, 110, 112, 114, 116, 118, 120, 122,
>  		124, 126, 128, 130, 132, 134, 136, 138, 140, 149, 151, 153,
>  		155, 157, 159, 161, 163, 165
>  	};
> -	u8 place = chnl;
>  
>  	if (chnl > 14) {
> -		for (place = 14; place < sizeof(channel_all); place++) {
> +		for (place = 0; place < sizeof(channel_all); place++) {
>  			if (channel_all[place] == chnl)
> -				return place-13;
> +				return ++place;
>  		}
>  	}
>  	return 0;
> 

This is a good catch!

You should reduce the size of the array accordingly as you now only need
space for the 5G channels, since you removed all the 2G channels.

To put it into context, for WiFi, there are 14 traditional 2GHz
channels, which are channels 1 through 14, and all the remaining
channels here are in the 5GHz spectrum.

It would also make sense to change the name of the array from
channel_all to channel_5g to reflect the situation. You can introduce a
#define ODM_TARGET_CHNL_NUM_5G next to the existing definition of
ODM_TARGET_CHNL_NUM_2G_5G.

Cheers,
Jes


