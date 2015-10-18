X-GM-THRID: 6206160535830921216
X-Received: by 10.180.210.212 with SMTP id mw20mr3321021wic.3.1445172877855;
        Sun, 18 Oct 2015 05:54:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.149.244 with SMTP id ud20ls442545wib.49.gmail; Sun, 18 Oct
 2015 05:54:37 -0700 (PDT)
X-Received: by 10.180.105.98 with SMTP id gl2mr3341187wib.0.1445172877503;
        Sun, 18 Oct 2015 05:54:37 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id go9si281204wib.3.2015.10.18.05.54.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 05:54:37 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0Lurx3-1aVUBZ3qwT-0102aT; Sun, 18 Oct
 2015 14:54:36 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: lpoc_osc: Change the variable to be checked
Date: Sun, 18 Oct 2015 14:54:36 +0200
Message-ID: <11015695.tbMmBsISvl@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CAKHNQQHa4qnxs-CnrdLhFFTSxRs=xjH2XQbNb-bKBymFJDzrpg@mail.gmail.com>
References: <20151016083218.GA2815@ubuntu> <CAKHNQQGQTmd2-UHKSqyf_86D7Xo30HPm=y-VZM4AagrQ_u6zFA@mail.gmail.com> <CAKHNQQHa4qnxs-CnrdLhFFTSxRs=xjH2XQbNb-bKBymFJDzrpg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:C5Gd4ciUnHQXHmh1GKS/GcMu/w71Da/68bg/eHowKc8IvC0wz9q
 B7MUfzfy9ZZnNzmaqKm4v2csHd1Fml3YCkcL9AA+q2MftFuz06dO7Oip/TpK69oW6aSSLVV
 lISQiEKEVyQE2RD59gs0YI+tjMg+k8PpxV1UpBt54tezZH+wCsfsQUW3FONNhB3Zl9lvWzF
 ByHhOdBPbDGi1v5h/CHBg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:8I5S6EHXMr0=:ZjShA7hChdbg/ULX8U+g48
 cMIbAE6sgqxaQXUem1JpvNDDMYM73/mT9CrfceUaWw/i9FweXJmUWUElvdi+l5n9PgG6WS6yw
 hjM0U9nizppTmvGk/WTVSimC/QfqEda88pWdnU9H2lB6Vzzq+/KFlAoi+K1XH7/KVAr8bLkvX
 LNkKoa16x4huBeWLnudJO+89+aowJHNn1KrapGveEPlkCJzCSn5owWS1z66OAHnMI1kYA2zYB
 79mJwrMQA6A8/pWKwHSQiT/q1kIp/QqaYIpQVHb/kq8/2JOm0J7DkT+Adn/uw/iBPZUd+KNoX
 fxcqhLxR3D7wkjrw7U052k7PeAdkIXOPsSie8IrqsOpie1BFFM+OY4Q13/t2XECACp+E0zaPK
 DoMuHn8wJ05H64ieGCeOI+KSGnuk+sXxzPEd5LhGp7YNDRRRAgGIrhkA5VCSWn4E3/drTdPL7
 Uqqw0nRZelwHeqpbHH0xzUzk1N5P9Lth8/x+mcwPrCEm/6Jd2+Lt6Srb+ALe6bHEwl39v6jBX
 T3oY/YxqXpF4kswQrWmLEvoWheX8ZSt/o6pQxOeLIiyxUFUxLCD/Fclag6oXIyoK2hWf4RkvT
 HxDmRwqgXzyRkLI25n3uB1oHxYuzksPJGilxVL2uVHRDHEIra4TlWqUSgyukB0sajYzcqB/Zm
 kb8rEyg7G2Aehw9805BSt3F5YdGGiX05m6U1ISxyZclNlSFQRZS9qDnuys8qz4zRHurx3l9kq
 ddqKr09MmgtIzQf+

On Sunday 18 October 2015 16:01:48 Shivani Bhardwaj wrote:
> Hi Arnd! I still have a doubt.
> if (rc)
>      return rc;
> 
> still doesn't make any sense, right?

I don't understand what you mean.

> On Fri, Oct 16, 2015 at 4:32 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> > On Fri, Oct 16, 2015 at 3:25 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> >>>
> >>> This means it is never going to throw out of range error?
> >>> If that is the case why do we take the variable val as unsigned long?
> >>> It can be typecasted in the function kstrtoul. We can take it as
> >>> simple int. And still
> >>> if (rc)
> >>>      return rc;
> >>>
> >>> statement is never going to be valid, is it?
> >>
> >> A used may still write "aardvark" into the file, which would return
> >> -EINVAL, and writing 999999999999999999 would return -ERANGE.

Anything wrong with my explanation here?

	Arnd

