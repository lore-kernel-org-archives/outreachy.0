X-GM-THRID: 6402542021433622528
X-Received: by 10.13.224.4 with SMTP id j4mr9919344ywe.44.1490713214506;
        Tue, 28 Mar 2017 08:00:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.81.210 with SMTP id s201ls2534945ita.18.gmail; Tue, 28 Mar
 2017 08:00:13 -0700 (PDT)
X-Received: by 10.107.128.169 with SMTP id k41mr9641255ioi.72.1490713213811;
        Tue, 28 Mar 2017 08:00:13 -0700 (PDT)
Received: by 10.55.156.65 with SMTP id f62msqke;
        Tue, 28 Mar 2017 07:13:11 -0700 (PDT)
X-Received: by 10.223.145.199 with SMTP id 65mr1820440wri.0.1490710391539;
        Tue, 28 Mar 2017 07:13:11 -0700 (PDT)
Return-Path: <David.Laight@aculab.com>
Received: from smtp-out4.electric.net (smtp-out4.electric.net. [192.162.216.186])
        by gmr-mx.google.com with ESMTPS id a126si195588wmd.2.2017.03.28.07.13.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 07:13:11 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning david.laight@aculab.com does not designate 192.162.216.186 as permitted sender) client-ip=192.162.216.186;
Authentication-Results: gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning david.laight@aculab.com does not designate 192.162.216.186 as permitted sender) smtp.mailfrom=David.Laight@aculab.com
Received: from 1csrrv-00060e-Tb by out4a.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <David.Laight@ACULAB.COM>)
	id 1csrrw-00068u-Vr; Tue, 28 Mar 2017 07:13:08 -0700
Received: by emcmailer; Tue, 28 Mar 2017 07:13:08 -0700
Received: from [213.249.233.130] (helo=AcuExch.aculab.com)
	by out4a.electric.net with esmtps (TLSv1:AES128-SHA:128)
	(Exim 4.87)
	(envelope-from <David.Laight@ACULAB.COM>)
	id 1csrrv-00060e-Tb; Tue, 28 Mar 2017 07:13:07 -0700
Received: from ACUEXCH.Aculab.com ([::1]) by AcuExch.aculab.com ([::1]) with
 mapi id 14.03.0123.003; Tue, 28 Mar 2017 15:13:04 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'simran singhal' <singhalsimran0@gmail.com>, "pablo@netfilter.org"
	<pablo@netfilter.org>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, "David S. Miller"
	<davem@davemloft.net>, "netfilter-devel@vger.kernel.org"
	<netfilter-devel@vger.kernel.org>, "coreteam@netfilter.org"
	<coreteam@netfilter.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] netfilter: ipset: Use max macro instead of ternary
 operator
Thread-Topic: [PATCH] netfilter: ipset: Use max macro instead of ternary
 operator
Thread-Index: AQHSp8hVLjkQV5X/tE2PuaUulgoI/6GqSuoQ
Date: Tue, 28 Mar 2017 14:13:03 +0000
Message-ID: <063D6719AE5E284EB5DD2968C1650D6DCFFC0145@AcuExch.aculab.com>
References: <20170328133256.GA24590@singhal-Inspiron-5558>
In-Reply-To: <20170328133256.GA24590@singhal-Inspiron-5558>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.202.99.200]
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Outbound-IP: 213.249.233.130
X-Env-From: David.Laight@ACULAB.COM
X-Proto: esmtps
X-Revdns: 
X-HELO: AcuExch.aculab.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 3396946, 3397078
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)

From: simran singhal
> Sent: 28 March 2017 14:33
> This patch replaces ternary operator with macro max as it shorter and
> thus increases code readability. Macro max return the maximum of the two
> compared values.
...
>  	/* Convert error codes to nomatch */
> -	return (ret < 0 ? 0 : ret);
> +	return max(0, ret);

It might be shorter but it isn't more readable.

	David



