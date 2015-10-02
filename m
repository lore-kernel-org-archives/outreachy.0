X-GM-THRID: 6201108859850850304
X-Received: by 10.112.125.104 with SMTP id mp8mr3030613lbb.20.1443817560979;
        Fri, 02 Oct 2015 13:26:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.145.132 with SMTP id t126ls282496lfd.89.gmail; Fri, 02 Oct
 2015 13:25:59 -0700 (PDT)
X-Received: by 10.112.145.3 with SMTP id sq3mr2312729lbb.7.1443817559365;
        Fri, 02 Oct 2015 13:25:59 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id bn1si28911wib.0.2015.10.02.13.25.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 13:25:59 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue004) with ESMTPSA (Nemesis) id 0MbcQr-1ZyowF2cyr-00IzO6; Fri, 02 Oct
 2015 22:25:58 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/5] Staging: lustre: obdclass: cl_io: Declare as static
Date: Fri, 02 Oct 2015 22:25:58 +0200
Message-ID: <1585221.NbWGTP86gf@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443808154-13944-2-git-send-email-shraddha.6596@gmail.com>
References: <1443808154-13944-1-git-send-email-shraddha.6596@gmail.com> <1443808154-13944-2-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:XqrTIhjkYvzstDMMo/sBlBL7cSgM4s9vW2m4Ey9Gww8aAAoC2w3
 Wf6zKr1mUiwIUJHvvDQe2tJzB/6fgIDYuxwxCut2cuXcTTIE0wjFVWfvkcoIztCh7RELKrn
 M3mxvx/j4ko1VAxatRIOnvO7kIduo/oWbJ9kg7d/wEFHHcvIv2yzu8mqJ/W/U/FeY1SHsPD
 pWo8GjxMYma1MGOBzswKQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:QGwmAuBK+tk=:mRFQp0PlgqescDVW1YmX9t
 bxgYclL9OioQkqHmDJ+xyb0vtkbJnVDHDfAKVVd9/R0vy2RLEqqhIXCS9O7WlCzchcPpXYa+a
 tWPng0EkEKtkKU5IUlskI/g5I2aWOdoDnBFUbiSpuby8QCKKiQQKFrNMSx+KzqM/o5132ZUia
 wijKczraSpkviTldIfOEnVrdM8lapyFIk3okjoSiIatWFxcu6F3tr3MouOCsexv+TbwojmZWu
 2S/kvOCql8lLrzzbnyVzdc/98tedg9Kzd63GVJwqtKQF3DenSCiAeJ7ksIw/Pr26r+bcc20C9
 jpqXgXoZOG7xkXzk7COpqqHmJ4cXYix5PjQ40fG9uxBQgIGh3RFUWbtxwNAY63p3Ki+tRNuQW
 CoAgsH553sizEsfCBB0Xje+5FB2AwfWE5yYURz4oYzFlisj4n4XKajr2PeR1wh5j7aAi+tkzj
 oUcjrGw0sW5VptMDKKjWPpcyfGIPBe6zR5fHc9IK1oP3VmC+biEfDz8wxcBuGXjllCQH4ATkh
 A+Ihv6gGroCFXES/gOofErpdB83xuOEC1h7QvGcicaQWBuOWcaVuYThgqTTDb2wh8WjmcXb0o
 0T2L1tDaSSVWhrJAuE26z4y5cZyWF6iwFEf9PCOrWf+55eLmJgo3chxDIpT/tLF0JaPdnepCI
 g1g2p5Pq0RayPmYLZcKQzc4Et7LRSuiOJi/gAsmoS4dhu7Q50gcOaBuOlhgWxhHHlNXAWLMg7
 MYL6Zcikq+4+jxd0

On Friday 02 October 2015 23:19:10 Shraddha Barke wrote:
> Declare cl_page_list_assume, cl_io_cancel, cl_io_rw_advance,
> cl_page_list_del, cl_page_list_discard, cl_page_list_fini as
> static since they are used only in this particular file.
> Also remove them from corresponding header files
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

