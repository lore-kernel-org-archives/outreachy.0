X-GM-THRID: 6470521985468203008
X-Received: by 10.98.220.17 with SMTP id t17mr304555pfg.44.1506538169531;
        Wed, 27 Sep 2017 11:49:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.235.134 with SMTP id p6ls659580plk.12.gmail; Wed, 27 Sep
 2017 11:49:28 -0700 (PDT)
X-Received: by 10.99.115.28 with SMTP id o28mr445783pgc.72.1506538168392;
        Wed, 27 Sep 2017 11:49:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506538168; cv=none;
        d=google.com; s=arc-20160816;
        b=ewrPvhAWUoLlJtNOy3s1sTEZ0Gx6R1Yd80f+1pFo8W2lKE6yc+pbMMZVznC/KQBFEl
         ZBLAPAeOw3/q7hpYYtR9v9dyOLSbM2cFNR+ML+XUpisPXjHfThEnZi/fq9QWBDijacVa
         FIapnoKNiRbWwj9oxxKJ/oCb+ROf/WQXwSl8+eR4fbYj9J/OKrWvZRh1ystoKZhhQBWi
         EGXEKBVNG1KkU9OSSRdk4HxoEsb7PtQ7B1+f88hXiFKEfBDtb+Cc+L1aKrW93chTTwpP
         Rhvd/jdUSm4GkLYlMU3EmYDDUHZTnxZlC2EA9x06QD99qRh7UYO6pUygcMEKSKwcN5Bd
         cSdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=4QGP7nGjFk9DcuwCwz5qA9KqoxHr5xOAH5qbQEBD31c=;
        b=v6vXt2q4X4SaLIz4rc/BvTp01naVxsgfl2DiagYYH+/mN4Z1xmd5jfIi4Au3v0f/S0
         NlwXqivhQ9TDFlLK1u5FC4t81g9xEaiAGk1BkJ+nLJ9Fq390isj96yFOmYM8CC0PnxGg
         ed6xBbLRCLvVhRnmgRjri1AhpoC+SD24cqGOoExH4x/1ouMUoDtNQlKevkBeP6BJMQd9
         0TnzS/fOLCLrE1t5eddT6wy3i+vpVK5mbKcK9Lnp71Y+ZA627QG+VmgasrT0pJ14Is6z
         M4mMYZTy9C7smecEMyqFybxbwhPjpWiZtyeoTPIfQHyJ6T47za+UtdUvgnyOymhCdKz1
         kREA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ULpxuJUL;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id t77si992352pfi.13.2017.09.27.11.49.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 11:49:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ULpxuJUL;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id j16so10070202pga.2
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Sep 2017 11:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4QGP7nGjFk9DcuwCwz5qA9KqoxHr5xOAH5qbQEBD31c=;
        b=ULpxuJULmuTVRvapLhsudsntaxNI1nUUPcZZMb8FZyI5hn4TBV92BCMZ2vWTDM76sr
         GvLDp74UmHqDoPa2+0wMeVsGxeE0L66+KpcaKRtsxCD/SjOj8FjJvDolyvLc28o0QOxC
         8JTnDk9tzYBZoMPi2fhyFsAWuSycBW0l9JiqUFnP679QabY8ZF5/UqdZgMaGkmcCDkvb
         KNFCTbj0GUwj1WaVy1I1snrHu+0EPXzqeCptG+gSEnwzCvMp9E71RsUmE1snaigTSJ8l
         cqJT2UZutJiEIxc+r3BObA8ZyafwEubYVRXphFMfL3lu/cAhgO24A5XQDBtxqz1hTUvB
         0t2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4QGP7nGjFk9DcuwCwz5qA9KqoxHr5xOAH5qbQEBD31c=;
        b=ZuuvT9HB0ljGprMt0EeoIGwIO1r8tPe0GkfBIbOP+oXX+1G4SmyPgocjRBDNgyuKp6
         lgX9Dz8bfa9ZGExcGFYdIDKQNjSQmBlJ8FShW4FDRxFnkEsCOPQfUPJnuLDEnMVubz1b
         txH55XdnxkOqVlmEPawnNQkFGOCi2XMBrNgHkeNlfg0CogCWCWxBD1nzDeiu/Q9s9TLk
         S6R7TwlzRKfxwA3uJ7Gyhk0fES6btbtk7wWmRlbFwYsFZoNlojF4X0QLIVdymfHJ5qIQ
         6/49m+fLKC4L/a3UtROqBTLHzNE9dBT9NGSbhhoPQMp7RmupMUVRfcq5r7yTOaqBlsPo
         WseA==
X-Gm-Message-State: AHPjjUhlxJBHV/hHDqKSQo1JJwGnGeMBiOJAWXpw3g35VvHEX2WMK2Vj
	eqBVAbxfKO8I/zmcSS6OzGJ0Dg5l
X-Google-Smtp-Source: AOwi7QCy3W8RwWyQmEVChl2Jee2GJqodyzSpxrqOuRONLm6n8vdJ/gOK9y/eXg4MJdd6Ds+6HJ72IQ==
X-Received: by 10.101.69.8 with SMTP id n8mr2073951pgq.167.1506538168061;
        Wed, 27 Sep 2017 11:49:28 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id m9sm24098914pgt.49.2017.09.27.11.49.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 11:49:27 -0700 (PDT)
Date: Thu, 28 Sep 2017 00:19:22 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: linux@wolf-entwicklungen.de, outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: pi433: fix grammar issues
Message-ID: <20170927184922.GA7752@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

- This commit fixes spelling issues in documentation files.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
Changes in v3:
  then -> than the

changes in v2:
  spellings -> spelling

 drivers/staging/pi433/Documentation/pi433.txt | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/pi433/Documentation/pi433.txt b/drivers/staging/pi433/Documentation/pi433.txt
index 38b83b8..245fef3 100644
--- a/drivers/staging/pi433/Documentation/pi433.txt
+++ b/drivers/staging/pi433/Documentation/pi433.txt
@@ -20,7 +20,7 @@ Discription of driver operation
 a) transmission
 
 Each transmission can take place with a different configuration of the rf
-module. Therfore each application can set its own set of parameters. The driver
+module. Therefore each application can set its own set of parameters. The driver
 takes care, that each transmission takes place with the parameterset of the
 application, that requests the transmission. To allow the transmission to take
 place in the background, a tx thread is introduced.
@@ -33,7 +33,7 @@ there is no receive request or the receiver is still waiting for something in
 the air, the rf module is set to standby, the parameters for transmission gets
 set, the hardware fifo of the rf chip gets preloaded and the transmission gets
 started. Upon hardware fifo threshold interrupt it gets reloaded, thus enabling
-much longer telegrams then hardware fifo size. If the telegram is send and there
+much longer telegrams than the hardware fifo size. If the telegram is sent and there
 is more data available in the kfifo, the procedure is repeated. If not the
 transmission cycle ends.
 
@@ -41,7 +41,7 @@ b) reception
 
 Since there is only one application allowed to receive data at a time, for
 reception there is only one configuration set.
-As soon as an application sets an request for receiving a telegram, the reception
+As soon as an application sets a request for receiving a telegram, the reception
 configuration set is written to the rf module and it gets set into receiving mode.
 Now the driver is waiting, that a predefined RSSI level (signal strength at the
 receiver) is reached. Until this hasn't happened, the reception can be
@@ -123,7 +123,7 @@ packet format:
 		optionOff	- no preamble will be generated
 	enable_sync
 		optionOn	- a sync word will be automatically added to
-				  the telegram after preamble
+				  the telegram after the preamble
 		optionOff	- no sync word will be added
 		Attention: While possible to generate sync without preamble, the
 		receiver won't be able to detect the sync without preamble.
@@ -136,7 +136,7 @@ packet format:
 		Attention: should be used in combination with sync, only
 	enable_address_byte
 		optionOn	- the address byte will be automatically added to the
-				  telgram. It's part of the payload
+				  telegram. It's part of the payload
 		optionOff	- the address byte will not be added to the telegram.
 		The address byte can be used for address filtering, so the receiver
 		will only receive telegrams with a given address byte.
@@ -161,7 +161,7 @@ packet format:
 		one byte, used as address byte on address byte option.
 
 
-The rx configuration is transfered via struct pi433_rx_cfg, the parameterset for receiving. It is devided into two sections: rf parameters and packet format.
+The rx configuration is transferred via struct pi433_rx_cfg, the parameterset for receiving. It is divided into two sections: rf parameters and packet format.
 
 rf params:
 	frequency
@@ -178,7 +178,7 @@ rf params:
 		OOK - on off key
 	rssi_threshold
 		threshold value for the signal strength on the receiver input.
-		If this value is exeeded, a reception cycle starts
+		If this value is exceeded, a reception cycle starts
 		Allowed values: 0...255
 	thresholdDecrement
 		in order to adapt to different levels of singnal strength, over
@@ -198,7 +198,7 @@ rf params:
 		twohundretOhm	- for antennas with an impedance of 200Ohm
 	lnaGain
 		sets the gain of the low noise amp
-		automatic	- lna gain is determed by an agc
+		automatic	- lna gain is determined by an agc
 		max		- lna gain is set to maximum
 		maxMinus6	- lna gain is set to  6db below max
 		maxMinus12	- lna gain is set to 12db below max
@@ -232,7 +232,7 @@ rf params:
 			     amount of bytes that were requested by the read request.
 		Attention: should be used in combination with sync, only
 	enable_address_filtering;
-		filteringOff		- no adress filtering will take place
+		filteringOff		- no address filtering will take place
 		nodeAddress		- all telegrams, not matching the node
 					  address will be internally discarded
 		nodeOrBroadcastAddress	- all telegrams, neither matching the
@@ -245,7 +245,7 @@ rf params:
 				  calculated crc doesn't match to two bytes,
 				  that follow the payload, the telegram will be
 				  internally discarded.
-		Attention: This option is only operational, if sync on and fixed length
+		Attention: This option is only operational if sync on and fixed length
 		or length byte is used
 	sync_length
 		Gives the length of the payload.
@@ -255,9 +255,9 @@ rf params:
 		Overrides the telegram length either given by the first byte of
 		payload or by the read request.
 	bytes_to_drop
-		gives the number of bytes, that will be dropped before transfering
+		gives the number of bytes, that will be dropped before transferring
 		data to the read buffer
-		This option is only usefull, if all packet helper are switched
+		This option is only useful if all packet helper are switched
 		off and the rf chip is used in raw receiving mode. This may be
 		needed, if a telegram of a third party device should be received,
 		using a protocol not compatible with the packet engine of the rf69 chip.
-- 
2.7.4


