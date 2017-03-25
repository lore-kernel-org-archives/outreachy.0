X-GM-THRID: 6401457215612387328
X-Received: by 10.223.134.74 with SMTP id 10mr962317wrw.6.1490477530335;
        Sat, 25 Mar 2017 14:32:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.54.208 with SMTP id y77ls804840wmh.11.gmail; Sat, 25 Mar
 2017 14:32:09 -0700 (PDT)
X-Received: by 10.28.157.66 with SMTP id g63mr146184wme.22.1490477529415;
        Sat, 25 Mar 2017 14:32:09 -0700 (PDT)
Return-Path: <alexander@alemayhu.com>
Received: from mail-lf0-x231.google.com (mail-lf0-x231.google.com. [2a00:1450:4010:c07::231])
        by gmr-mx.google.com with ESMTPS id x188si252236wmx.0.2017.03.25.14.32.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Mar 2017 14:32:09 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4010:c07::231 is neither permitted nor denied by best guess record for domain of alexander@alemayhu.com) client-ip=2a00:1450:4010:c07::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@alemayhu-com.20150623.gappssmtp.com;
       spf=neutral (google.com: 2a00:1450:4010:c07::231 is neither permitted nor denied by best guess record for domain of alexander@alemayhu.com) smtp.mailfrom=alexander@alemayhu.com
Received: by mail-lf0-x231.google.com with SMTP id z15so7010855lfd.1
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Mar 2017 14:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=alemayhu-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=ZrPJXw5seBlAYQjmE4sPT2ACpUidCmsJ7+1XVUrgWDk=;
        b=BH5HEqu/1UsrqVsllP5sYs7YRiw6Fi4feKuugRNr4WlCRCZbjqAMacr9yX2Miu0Wsb
         OMyHQATIKhHdkacx/hssEm3XYfgEpQE3J6RiL9z+kgBrFuzlVX4MLf2bhMjHZlwhkd22
         w0Zjp+a68lq7aSLncV4nC/kjiifU9YOoy0Hw8nTF61u7lizKiX6/zbHS+q3hNGmYsDh5
         7TX6p68dquWya6uj0Js7QiW0Oyvd8skCFtW/CpENMrtnJ3O+J3x/xqKOBgp+W0zeKRUv
         BWaHoqOmPr2KkVXd4gmTCsJOzCXkfFjx1B1a0RQlvgpDfIXeeU0N50A9KNOVze3YlwHb
         bMJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=ZrPJXw5seBlAYQjmE4sPT2ACpUidCmsJ7+1XVUrgWDk=;
        b=qcLrKAJ2tdo/oAo+TRKrc3Kn55PWslPXM43krrJVX3ZHqrebTEgabehfwqy9/AXo+4
         fD+N1Z7ki1uy9djGPChIHvVn2hUyhBlv1/hI7hE8Yc6ruNdy6HKEBPpUdoqZx3UsD3rT
         VEqLjOwYRf+LFQVYhQHqvJQXcxh3vDxn0qr7cfvq+oJvBzhitm0HOQ43Vl+7qZWnsdUA
         /l8G7QcHj6mP+2y/VF55gfHHxxan58NmKYT4zNgFpzIhp3XwsV+P6DpAmHw9NnV2HrSC
         R3aljoOWxJcBsv+Fhn9N+buvtkw5eOX8sfWYA11ApqDZ4Uq4fnXXZWRpZ9yn0yywb0rX
         3tWQ==
X-Gm-Message-State: AFeK/H1l4DXJzaaPowH6vkPEZ9UAC6E6V8ty1ti3LwW+gfVCY7K0FHbm9Zu8WduJNqufyw==
X-Received: by 10.25.32.9 with SMTP id g9mr7317948lfg.7.1490477528835;
        Sat, 25 Mar 2017 14:32:08 -0700 (PDT)
Return-Path: <alexander@alemayhu.com>
Received: from localhost ([2a02:fe0:c020:790::5])
        by smtp.gmail.com with ESMTPSA id o91sm1122999lfg.1.2017.03.25.14.32.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 25 Mar 2017 14:32:08 -0700 (PDT)
Date: Sat, 25 Mar 2017 22:32:07 +0100
From: Alexander Alemayhu <alexander@alemayhu.com>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Jonathan Corbet <corbet@lwn.net>
Subject: Re: [Outreachy kernel] Doubt regarding Sphinx build
Message-ID: <20170325213207.GA2556@gmail.com>
References: <CAKG5xWipwnUZ9kNMG7BJeJRSH2XP-JZ6KovuBpA0_ntb-5SitQ@mail.gmail.com>
 <20170325153314.GA15129@gmail.com>
 <CAKG5xWhwqB34tgqmHB-0--7iLOqgA5qzp-PfAqfP41_YwDhFHw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKG5xWhwqB34tgqmHB-0--7iLOqgA5qzp-PfAqfP41_YwDhFHw@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sun, Mar 26, 2017 at 02:28:53AM +0530, sayli karnik wrote:
> >
> I ran 'pip install graphviz'. But 'make htmldocs' still gives the same errors.

If your distro has a package manger use that instead. What you have installed is
a python interface which will not provide the dot executable that is missing on
your machine.

-- 
Mit freundlichen Gr��en

Alexander Alemayhu

