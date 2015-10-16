X-GM-THRID: 6206160535830921216
X-Received: by 10.112.190.74 with SMTP id go10mr3359779lbc.9.1444984867216;
        Fri, 16 Oct 2015 01:41:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.11.238 with SMTP id t14ls80800wib.40.canary; Fri, 16 Oct
 2015 01:41:06 -0700 (PDT)
X-Received: by 10.180.91.233 with SMTP id ch9mr810486wib.4.1444984866323;
        Fri, 16 Oct 2015 01:41:06 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id m4si93679wib.0.2015.10.16.01.41.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 01:41:06 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0Ls5Ln-1aZ1iQ2vjr-013uaN; Fri, 16 Oct
 2015 10:41:05 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shivani Bhardwaj <shivanib134@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: lpoc_osc:  Change the variable to be checked
Date: Fri, 16 Oct 2015 10:41:05 +0200
Message-ID: <4275207.TTHHeQE8pW@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151016083218.GA2815@ubuntu>
References: <20151016083218.GA2815@ubuntu>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:sB+G3jhi9e1fRdluvC/tJbkEjOptLxPGGbJTYXvB1wPFDDyLfOF
 csP3UD2Eg8wAqb6DMTUUgJTchHRLUeqIPoCOpsxjyuZgnxN3HFFuDNT+1KZJhsQvvgyszs9
 8itb0LJhEy8yCE2rLxZSETKJzTDGQMa8RCx2/+NeFIzHZeuXror7gP0UD9gsAvgtn4glTzv
 HlIdSMMotvPCECJn85J+Q==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Up90+5Lja2Q=:OaeHxOdFgHlagwW7GJWyIx
 DSBjNQrE1rMjidobWlGEv3V1AbsIUAY41Iu+p2dg7iAGSkHynx48xIXxJ9K7W5X71/51UeGtk
 MmhiEAfFKGbsBJo+nc9qoSr1flauRT6a/plt7AyJiFZCnyql13aiDk6Wo7ACILWBeRM1YQSFX
 6cl91kMkf5ObYOcB/wab0GgwdIkHSI7fWAKLggNQNW15Dm9dvH+Tk8iU9io+CP0VXUa69zp9U
 EZr7WgvloN/Ttcy54YGntMDNTmOAWsCLcfpCrOmGMy5Dw3QjRFN1/Fm0vLsFi872Pz0grM5KH
 Q2i8d65cpAZ07ST2IrBcN38HJVma4GLDNYiMLTrZYFWx3eI2bAcXdYno6amOPV5B0tu66kdn2
 dT+ZFOKhZD74BC6kLGVHeRX6vB1SPGj7UisDjTvtSUxsIFAdEXXrkhCm29utDC0AcMWnG1BQo
 h4B5DIO5nqLt9gsywtsUvUmk2p64jvDM4MQRrKCtjTKNUXB23n43J6qq5wsYFjk2X+LiSyCOf
 Paqxc/LIfKxuRp+qhsM0m93HgwFBBG0wLuh824jDgMtSttgZ9070p0v9spBWObKrURbnyVb8q
 6mLeZJnyg6FT80rQiRFA/gmZmJu8dbpVM6BIKpq3JwF+zxiCnHHEXsXlEC0K3Qre1p1lPupE6
 hSD8lTwgmGEi3fVfk9ebURdzn2/52GiCH2aSxDP9x1xZKE0xIohTGjDZAaSAVuNXgnrka2Csy
 hGuahF5TUpMe028L

On Friday 16 October 2015 14:02:18 Shivani Bhardwaj wrote:
> index 053d508..cdc7f88 100644
> --- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
> +++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
> @@ -61,9 +61,7 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
>         unsigned long val;
>  
>         rc = kstrtoul(buffer, 10, &val);
> -       if (rc)
> -               return rc;
> -       if (val < 0 || val > 1)
> +       if (rc < 0)
>                 return -ERANGE;
>  
>         /* opposite senses */
> -- 
> 

I believe the intention of the code is to return -ERANGE if anything other
than 0 or 1 is stored here, which no longer works after your patch. The
range check in kstrtoul only ensures that there is a number that fits within
an 'unsigned long'.

	Arnd

