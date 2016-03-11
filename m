X-GM-THRID: 6257874125297025024
X-Received: by 10.182.236.4 with SMTP id uq4mr9484741obc.3.1457740272951;
        Fri, 11 Mar 2016 15:51:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.163.13 with SMTP id m13ls1534506ioe.49.gmail; Fri, 11 Mar
 2016 15:51:12 -0800 (PST)
X-Received: by 10.66.119.197 with SMTP id kw5mr9282874pab.15.1457740272553;
        Fri, 11 Mar 2016 15:51:12 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si1720169pac.1.2016.03.11.15.51.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 15:51:12 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 51227AD9;
	Fri, 11 Mar 2016 23:51:12 +0000 (UTC)
Date: Fri, 11 Mar 2016 15:51:12 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: "pooja.shamili" <poojashamili@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: mt29f_spinand: Replacing
 pr_info with dev_info after the call to devm_kzalloc
Message-ID: <20160311235112.GB24951@kroah.com>
References: <20160311233850.GA32367@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160311233850.GA32367@localhost>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Mar 12, 2016 at 05:08:51AM +0530, pooja.shamili wrote:
> The function devm_kzalloc has a first argument of type struct device *.
> This is the type of argument required by printing functions such as
> dev_info, dev_err, etc. Thus, functions like pr_info should not normally
> be used after a call to devm_kzalloc. Thus, all pr_info occurances are
> replaced with dev_info function calls.
> 
> This was done using Coccinelle, the patch being:
> @@
> expression E1,E2;
> expression list args;
> @@
> 
> E1 = devm_kzalloc(E2, ...);
> <...
> - pr_info(
> + dev_info(E2,
> args);
> ...>
> 
> Signed-off-by: pooja.shamili <poojashamili@gmail.com>

I need a "real" name here, and in the From: line please.

thanks,

greg k-h

