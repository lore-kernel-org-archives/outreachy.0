X-GM-THRID: 6330669960642166784
X-Received: by 10.36.53.12 with SMTP id k12mr5565403ita.4.1474014396646;
        Fri, 16 Sep 2016 01:26:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.225 with SMTP id s94ls1654144ioi.15.gmail; Fri, 16 Sep
 2016 01:26:36 -0700 (PDT)
X-Received: by 10.107.44.11 with SMTP id s11mr10199511ios.11.1474014396154;
        Fri, 16 Sep 2016 01:26:36 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id z4si2199398pam.0.2016.09.16.01.26.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 01:26:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7D01794D;
	Fri, 16 Sep 2016 08:26:35 +0000 (UTC)
Date: Fri, 16 Sep 2016 10:26:41 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Namrata A Shettar <namrataashettar@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Arnaud Patard <arnaud.patard@rtp-net.org>,
	Clifton Barnes <clifton.a.barnes@gmail.com>,
	Geliang Tang <geliangtang@163.com>, Ben Marsh <bmarsh94@gmail.com>,
	Janani Ravichandran <janani.rvchndrn@gmail.com>,
	Benoit Hiller <benoit.hiller@gmail.com>
Subject: Re: [PATCH] staging: xgifb: Replace explicit NULL comparison
Message-ID: <20160916082641.GA20262@kroah.com>
References: <CAFrQyDFEhVcu48ROi4Nq1DNMMzLVu80ON3O2eZ5Bk4F7qrr_HA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAFrQyDFEhVcu48ROi4Nq1DNMMzLVu80ON3O2eZ5Bk4F7qrr_HA@mail.gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 16, 2016 at 02:42:18AM +0530, Namrata A Shettar wrote:
> Replace explicit NULL comparison� with equivalent expression to resolve
> checkpatch issue.
> - x != NULL => x
> 
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
> �drivers/staging/xgifb/XGI_main_26.c | 2 +-
> �1 file changed, 1 insertion(+), 1 deletion(-)

You sent this as an html email, and that will not work for patches,
sorry.

thanks,

greg k-h

