X-GM-THRID: 6466007141688803328
X-Received: by 10.25.22.24 with SMTP id m24mr193104lfi.36.1505484919973;
        Fri, 15 Sep 2017 07:15:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.141.207 with SMTP id p198ls306540lfd.52.gmail; Fri, 15 Sep
 2017 07:15:18 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDx0uYzhoJ+rdyfAkls1AmTk8dWQ9EsDd/551LIrkcUj1HjPSIep5iqcmsDfm+ssAsiRrNP
X-Received: by 10.46.92.193 with SMTP id q184mr2187555ljb.34.1505484918556;
        Fri, 15 Sep 2017 07:15:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505484918; cv=none;
        d=google.com; s=arc-20160816;
        b=Ex2B5TxtpdJOhjNrSULbNZf5eFRWFINrzxoIC9+rytkT06vRmu9C+Ywp5UDaK9Fj2z
         RPdJHZxnLt6wTcTiLzD/qTyuT+ZCa7pHP7NP64kBAOcwihhmG007wIzx0Z5KwoT60Qjm
         BU/0WZ4i9x4TOcegZU0SS2U8IG2HZJVjvHtxECVctaIfFRKsAnWE2hg27NPZfR3POhCM
         Ya7zhM6LgBK4y2XlW1kuUbz1iy8P+5V6kzG+FdNXax6sOBfPIjqk3fu/DkRv2ZFnDnJ1
         OiUjA2B/+EPZjzTmH48BuaBcmaMSOhJURCwb9obnLkp8feUH0RfFsT9ClVERUXDjrQVk
         Zwag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=xe2JPyO2UR4stXNa4RWmPeRypS+85kDM0uQJdWct600=;
        b=VY49vutcHigGnmwG45P4vxbLOrHXcMWuVVO8mrVFPgfPMqCu7dtcnrgdq4m5oGb/pH
         3IGGGe5uMyuhrIhMZcjqUZ9n0LadD1SjoKE25MDA/zpdeTiTD/9pmwZ4XVU3U4Txbsq/
         Hl1r8lqanE5kr0aWFAtH+sisPGK0wQ9907hqPBebLnDNi9g0zJEJl00tdgwbMQAjTnup
         kfw5AmLqrQrgWldgT44up4p9l36gOvggeE2Qvs4JQO4GFqDTof4djC8aEbYnIxzW6dgA
         vpG/YC/84t/quxpgqeWvl+m+P8tmjyvQPDQkr5DIrbc9EieKnaUeJV7/2ONCvXA+bDcQ
         UiWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a21si29491wme.2.2017.09.15.07.15.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 07:15:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,397,1500933600"; 
   d="scan'208";a="237652718"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 16:15:17 +0200
Date: Fri, 15 Sep 2017 16:14:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: outreachy-kernel@googlegroups.com, linux@wolf-entwicklungen.de
Subject: Re: [Outreachy kernel] [PATCH] Drivers: Staging: pi433 fix grammar
 issues
In-Reply-To: <20170915140956.GA20756@manoharreddy>
Message-ID: <alpine.DEB.2.20.1709151611340.3146@hadrien>
References: <20170915140956.GA20756@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

In the subject line, there should be a : after each part of the file name.
You also don't need Drivers.

On Fri, 15 Sep 2017, Keerthi Reddy wrote:

> - This commit fixes spellings issues in documentation files.

spellings -> spelling

> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  drivers/staging/pi433/Documentation/pi433.txt | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/pi433/Documentation/pi433.txt b/drivers/staging/pi433/Documentation/pi433.txt
> index 38b83b8..9e1f747 100644
> --- a/drivers/staging/pi433/Documentation/pi433.txt
> +++ b/drivers/staging/pi433/Documentation/pi433.txt
> @@ -20,7 +20,7 @@ Discription of driver operation
>  a) transmission
>
>  Each transmission can take place with a different configuration of the rf
> -module. Therfore each application can set its own set of parameters. The driver
> +module. Therefore each application can set its own set of parameters. The driver
>  takes care, that each transmission takes place with the parameterset of the
>  application, that requests the transmission. To allow the transmission to take
>  place in the background, a tx thread is introduced.
> @@ -33,7 +33,7 @@ there is no receive request or the receiver is still waiting for something in
>  the air, the rf module is set to standby, the parameters for transmission gets
>  set, the hardware fifo of the rf chip gets preloaded and the transmission gets
>  started. Upon hardware fifo threshold interrupt it gets reloaded, thus enabling
> -much longer telegrams then hardware fifo size. If the telegram is send and there
> +much longer telegrams then hardware fifo size. If the telegram is sent and there

then -> than the

The rest looks ok.

julia

>  is more data available in the kfifo, the procedure is repeated. If not the
>  transmission cycle ends.
>
> @@ -41,7 +41,7 @@ b) reception
>
>  Since there is only one application allowed to receive data at a time, for
>  reception there is only one configuration set.
> -As soon as an application sets an request for receiving a telegram, the reception
> +As soon as an application sets a request for receiving a telegram, the reception
>  configuration set is written to the rf module and it gets set into receiving mode.
>  Now the driver is waiting, that a predefined RSSI level (signal strength at the
>  receiver) is reached. Until this hasn't happened, the reception can be
> @@ -123,7 +123,7 @@ packet format:
>  		optionOff	- no preamble will be generated
>  	enable_sync
>  		optionOn	- a sync word will be automatically added to
> -				  the telegram after preamble
> +				  the telegram after the preamble
>  		optionOff	- no sync word will be added
>  		Attention: While possible to generate sync without preamble, the
>  		receiver won't be able to detect the sync without preamble.
> @@ -136,7 +136,7 @@ packet format:
>  		Attention: should be used in combination with sync, only
>  	enable_address_byte
>  		optionOn	- the address byte will be automatically added to the
> -				  telgram. It's part of the payload
> +				  telegram. It's part of the payload
>  		optionOff	- the address byte will not be added to the telegram.
>  		The address byte can be used for address filtering, so the receiver
>  		will only receive telegrams with a given address byte.
> @@ -161,7 +161,7 @@ packet format:
>  		one byte, used as address byte on address byte option.
>
>
> -The rx configuration is transfered via struct pi433_rx_cfg, the parameterset for receiving. It is devided into two sections: rf parameters and packet format.
> +The rx configuration is transferred via struct pi433_rx_cfg, the parameterset for receiving. It is divided into two sections: rf parameters and packet format.
>
>  rf params:
>  	frequency
> @@ -178,7 +178,7 @@ rf params:
>  		OOK - on off key
>  	rssi_threshold
>  		threshold value for the signal strength on the receiver input.
> -		If this value is exeeded, a reception cycle starts
> +		If this value is exceeded, a reception cycle starts
>  		Allowed values: 0...255
>  	thresholdDecrement
>  		in order to adapt to different levels of singnal strength, over
> @@ -198,7 +198,7 @@ rf params:
>  		twohundretOhm	- for antennas with an impedance of 200Ohm
>  	lnaGain
>  		sets the gain of the low noise amp
> -		automatic	- lna gain is determed by an agc
> +		automatic	- lna gain is determined by an agc
>  		max		- lna gain is set to maximum
>  		maxMinus6	- lna gain is set to  6db below max
>  		maxMinus12	- lna gain is set to 12db below max
> @@ -232,7 +232,7 @@ rf params:
>  			     amount of bytes that were requested by the read request.
>  		Attention: should be used in combination with sync, only
>  	enable_address_filtering;
> -		filteringOff		- no adress filtering will take place
> +		filteringOff		- no address filtering will take place
>  		nodeAddress		- all telegrams, not matching the node
>  					  address will be internally discarded
>  		nodeOrBroadcastAddress	- all telegrams, neither matching the
> @@ -245,7 +245,7 @@ rf params:
>  				  calculated crc doesn't match to two bytes,
>  				  that follow the payload, the telegram will be
>  				  internally discarded.
> -		Attention: This option is only operational, if sync on and fixed length
> +		Attention: This option is only operational if sync on and fixed length
>  		or length byte is used
>  	sync_length
>  		Gives the length of the payload.
> @@ -255,9 +255,9 @@ rf params:
>  		Overrides the telegram length either given by the first byte of
>  		payload or by the read request.
>  	bytes_to_drop
> -		gives the number of bytes, that will be dropped before transfering
> +		gives the number of bytes, that will be dropped before transferring
>  		data to the read buffer
> -		This option is only usefull, if all packet helper are switched
> +		This option is only useful if all packet helper are switched
>  		off and the rf chip is used in raw receiving mode. This may be
>  		needed, if a telegram of a third party device should be received,
>  		using a protocol not compatible with the packet engine of the rf69 chip.
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170915140956.GA20756%40manoharreddy.
> For more options, visit https://groups.google.com/d/optout.
>

