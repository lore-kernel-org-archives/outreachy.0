X-GM-THRID: 6401417655470784512
X-Received: by 10.99.5.150 with SMTP id 144mr8959473pgf.123.1490713214011;
        Tue, 28 Mar 2017 08:00:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.66 with SMTP id 60ls16011118otr.45.gmail; Tue, 28 Mar
 2017 08:00:13 -0700 (PDT)
X-Received: by 10.129.112.73 with SMTP id l70mr9461969ywc.45.1490713213632;
        Tue, 28 Mar 2017 08:00:13 -0700 (PDT)
Received: by 10.55.58.196 with SMTP id h187msqka;
        Mon, 27 Mar 2017 08:09:23 -0700 (PDT)
X-Received: by 10.223.173.182 with SMTP id w51mr1487088wrc.5.1490627363331;
        Mon, 27 Mar 2017 08:09:23 -0700 (PDT)
Return-Path: <David.Laight@aculab.com>
Received: from smtp-out4.electric.net (smtp-out4.electric.net. [192.162.216.187])
        by gmr-mx.google.com with ESMTPS id e72si91382wma.0.2017.03.27.08.09.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 08:09:23 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning david.laight@aculab.com does not designate 192.162.216.187 as permitted sender) client-ip=192.162.216.187;
Authentication-Results: gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning david.laight@aculab.com does not designate 192.162.216.187 as permitted sender) smtp.mailfrom=David.Laight@aculab.com
Received: from 1csWGi-0007UF-Vr by out4d.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <David.Laight@ACULAB.COM>)
	id 1csWGk-0007aA-TG; Mon, 27 Mar 2017 08:09:18 -0700
Received: by emcmailer; Mon, 27 Mar 2017 08:09:18 -0700
Received: from [213.249.233.130] (helo=AcuExch.aculab.com)
	by out4d.electric.net with esmtps (TLSv1:AES128-SHA:128)
	(Exim 4.87)
	(envelope-from <David.Laight@ACULAB.COM>)
	id 1csWGi-0007UF-Vr; Mon, 27 Mar 2017 08:09:16 -0700
Received: from ACUEXCH.Aculab.com ([::1]) by AcuExch.aculab.com ([::1]) with
 mapi id 14.03.0123.003; Mon, 27 Mar 2017 16:09:14 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Pablo Neira Ayuso' <pablo@netfilter.org>, Arushi Singhal
	<arushisinghal19971997@gmail.com>
CC: Jozsef Kadlecsik <kadlec@blackhole.kfki.hu>, "David S. Miller"
	<davem@davemloft.net>, "netfilter-devel@vger.kernel.org"
	<netfilter-devel@vger.kernel.org>, "coreteam@netfilter.org"
	<coreteam@netfilter.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Subject: RE: [PATCH] net: netfilter: Remove multiple assignment.
Thread-Topic: [PATCH] net: netfilter: Remove multiple assignment.
Thread-Index: AQHSpvMtgCYm0SZPB0GUBGSTW5HKwaGoyeUA
Date: Mon, 27 Mar 2017 15:09:13 +0000
Message-ID: <063D6719AE5E284EB5DD2968C1650D6DCFFBAC5F@AcuExch.aculab.com>
References: <20170325124946.GA9109@arushi-HP-Pavilion-Notebook>
 <20170327120827.GA15676@salvia>
In-Reply-To: <20170327120827.GA15676@salvia>
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

From: Pablo Neira Ayuso
> Sent: 27 March 2017 13:08
> On Sat, Mar 25, 2017 at 06:19:47PM +0530, Arushi Singhal wrote:
> > This patch removes multiple assignments.
> > Done using coccinelle.
> > @@
> > identifier i1,i2;
> > constant c;
> > @@
> > - i1=3Di2=3Dc;
> > + i1=3Dc;
> > + i2=3Dc;
>=20
> You have to explain why this is bad.

And your substituted code isn't equivalent.
The correct replacement is:
	i2 =3D c;
	i1 =3D i2;

	David


