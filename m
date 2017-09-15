X-GM-THRID: 6466007141688803328
X-Received: by 10.99.104.6 with SMTP id d6mr15113071pgc.84.1505484604749;
        Fri, 15 Sep 2017 07:10:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.205.196 with SMTP id d187ls7110911iog.38.gmail; Fri, 15
 Sep 2017 07:10:03 -0700 (PDT)
X-Received: by 10.200.7.8 with SMTP id g8mr7796403qth.35.1505484603525;
        Fri, 15 Sep 2017 07:10:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505484603; cv=none;
        d=google.com; s=arc-20160816;
        b=jUHJ8q2ZyRpvSrqFTGH0czgatWZxhBrgLV4gFEpiQnakVEzW8c6oCH1ak01zGUHaYi
         oAleWuEzQqmo1bPy9dYzvEoYcYxuqwEpX8XXX2/YOzmPzRhT+1wYoJLOhCSgIQiRIUMX
         qfbShxX8lTLHP2IIk1cWKxoxsWp/qVwqawFq+glxJy8QfV/5OLuHqqYw7Dw8sdS7gZ2W
         Kmi/HwyNNTwRih8zwwxpnkj6HukUPlVOR95HgXgAL6ADZcBV9xYtgHbrM4trMiYncJdK
         p6ybpC8UVEBXSA1UcSZE8P6RPlOZbjgZXVzdlGssLExMEs/eXrfzC5WGo1rbmllK9tNU
         x+tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=ZwkYzlzKa1jA4Cn52uKlBvUXqj6UnXuqW/u1GQCuvnI=;
        b=B5FogPQD/vxj+skzW08YzcorkN5+qWz+oJtyQikM2XnTloyZK30MnPmUnQCPd+SemH
         jFxl4W1Abjj1vBiURUqgSB2sksgu5VnPrdToNR0GJyQhuaSI0quBVGu8mMXnOahuS4j0
         Kve81NhYhdIl03V5/3FB8ih0+B7FSKaVFQ3QQP1lZrTZe5VPvArNtXlVWkBNhz9bYOFf
         j+LwahKoOXej3OCO+dgZWjQFK8yomXfq45IMDeb05kzy/AmJOFnAmBHb+7wPBDnK2MSY
         8lY0HuL7SgjJy7hNVrsU279/mwTsM9Xz/Baxp6Hm50yZGG+JgO0A1rBdaymTrOWh/k8r
         X1fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DY1UEHIl;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id k76si82435pfa.10.2017.09.15.07.10.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 07:10:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DY1UEHIl;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id v5so1388232pgn.4
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 07:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZwkYzlzKa1jA4Cn52uKlBvUXqj6UnXuqW/u1GQCuvnI=;
        b=DY1UEHIlw23tBsQgs53qJAKwzfrQ1nNgDARU2qCwndvGpQpwt71AFhV3P18PIEKoJW
         jyCEh5W0aINNEyfnH+jdfU+T522bf0qNn5nrjzbwl2Xp8lUiJtmlE0iMaGY3BOBhsjB9
         3GxKPKGpXuGmvb3GM0R/s2OnuAxe7iewfUhL+rF82A651NZ0QpkLZwM6ly1wURwiVvIz
         ZduXJc8S82hEHzXtN6sp+t7ZX5KFAjQmvnwkyctlOpFrCHujN0OiJvtotXyHcxLo68vr
         q9QMkOedYou3xK4EpYy9jWLyLgHDL5jfRNg3RnIGB8Jf6jCE/bSD3oCoEZFyY0pKeKpy
         ZNNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZwkYzlzKa1jA4Cn52uKlBvUXqj6UnXuqW/u1GQCuvnI=;
        b=pcUcqup6SGYn57bll2lhyat4AnzwPv58IeKEgMjUIkpXbPEp3aV2ExAZJxFGeqq/qC
         SjXZHrIzY9Emy/jl89ApiEpkv4WKUWNF36A62oPUIh5kQvZ08r5t2eYdRx7Iylc/X1Gm
         lVLyTuhtQLIPkEa9y7EnIqZwNpk9dm2avkVLPA0j73mLKVsJVHtqmY07LP2Mx2JILwyP
         VSv0CtMkC+fEKeexBiD3Z9pyW/NZI9FRCzCLAkXIc7QuU7azOMfV/eYAdwI7vtjR7T0/
         Oc3kpS4L1JVCjM+C++Qo4GYoaAfuBxklQ8ImpqquTyYhsntxtISfmz4zqdxSPexx3gTt
         XD/A==
X-Gm-Message-State: AHPjjUiQcXqIl11k507tGx35EHhMzsvC8rGtR1ZK1o88m8GoHUhhWJDm
	0IBldDM4AWhfMKgeit0=
X-Google-Smtp-Source: ADKCNb4Xb7pIIs89HORNsOyYVm4Cccju59d8mr9fW+krZEQGX27PGgsa+zJ4ldy5S2Sq4peDwG99Yg==
X-Received: by 10.98.100.206 with SMTP id y197mr24986199pfb.53.1505484602913;
        Fri, 15 Sep 2017 07:10:02 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([14.139.122.139])
        by smtp.gmail.com with ESMTPSA id e3sm3461660pga.80.2017.09.15.07.10.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 07:10:02 -0700 (PDT)
Date: Fri, 15 Sep 2017 19:39:56 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com, linux@wolf-entwicklungen.de
Subject: [PATCH] Drivers: Staging: pi433 fix grammar issues
Message-ID: <20170915140956.GA20756@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

- This commit fixes spellings issues in documentation files.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 drivers/staging/pi433/Documentation/pi433.txt | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/pi433/Documentation/pi433.txt b/drivers/staging/pi433/Documentation/pi433.txt
index 38b83b8..9e1f747 100644
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
+much longer telegrams then hardware fifo size. If the telegram is sent and there
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


