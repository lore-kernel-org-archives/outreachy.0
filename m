X-GM-THRID: 9130553114624
X-Received: by 10.180.182.201 with SMTP id eg9mr1050322wic.3.1426886420194;
        Fri, 20 Mar 2015 14:20:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.109.228 with SMTP id hv4ls426430wib.23.gmail; Fri, 20 Mar
 2015 14:20:19 -0700 (PDT)
X-Received: by 10.180.90.169 with SMTP id bx9mr1055536wib.6.1426886419745;
        Fri, 20 Mar 2015 14:20:19 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id sf8si23598wic.2.2015.03.20.14.20.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 14:20:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id m6so99380175wgd.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 14:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-type:mime-version:content-transfer-encoding;
        bh=zVxHmXmaCiHxfTIvouFgUuVK7C4ery0NfGP68/owMGQ=;
        b=hpdEuox4nHgO8qzr8CwFyOt7O3wBUiAAKY1LC5WRXPkNIa2SiLqjXybu/lKPPNMNRR
         CXSW6Up+Ilta4xuohgtudDJDBf0IyKOSmuT4z8uH4xng7o+H5Z7Sj2fOr/HLg/LyX5sQ
         MEDTcPKwxAkFwfVhEM6s4pgqTEhYKSLsC9M7s4pLSUexpH1fXOp9zKThR3qTwUW2Savc
         lTDJQQgFr1ANZU+kuZT+2HGFOVJSAkrtxgBPSqV/+f+sNRRuUzz+qIRfpFh/gFXo/6OX
         5semNmbUMy/G0jwEk1Ucq6A8lb1vwtFrIsuIhUUwYPET5V4GSxdUCS3JzfzjuuUm8Xml
         G/AA==
X-Received: by 10.181.9.98 with SMTP id dr2mr27523570wid.62.1426886419680;
        Fri, 20 Mar 2015 14:20:19 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from [192.168.0.104] (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id a13sm7942511wjx.30.2015.03.20.14.20.17
        (version=SSLv3 cipher=RC4-SHA bits=128/128);
        Fri, 20 Mar 2015 14:20:18 -0700 (PDT)
Message-ID: <1426886373.22881.2.camel@Inspiron>
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] Staging: iio: Add kernel-doc
 for struct hmc5843
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Date: Fri, 20 Mar 2015 23:19:33 +0200
In-Reply-To: <CAEnQRZBLofR0x9V8fYi90NVDJu8XyM4+jjYqfAfBhkVufCMgQQ@mail.gmail.com>
References: 
	<bf54cd694e0103b4e26cd91b243614f716bb693c.1426867335.git.cristina.opriceana@gmail.com>
	 <CAEnQRZBLofR0x9V8fYi90NVDJu8XyM4+jjYqfAfBhkVufCMgQQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Vi, 2015-03-20 at 21:39 +0200, Daniel Baluta wrote:
> On Fri, Mar 20, 2015 at 6:09 PM, Cristina Opriceana
> <cristina.opriceana@gmail.com> wrote:
> > This patch documents the struct hmc5843 specific data following
> > this warning:
> > "CHECK: struct mutex definition without comment".
> >
> > Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> 
> Please resend the whole patch series even if not all patches are changed.
> 
> Daniel.


The other patches have already been added to the staging-testing tree,
so I thought it wasn't necessary anymore.






