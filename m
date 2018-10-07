X-GM-THRID: 6609200682225369088
X-Received: by 2002:a9d:7117:: with SMTP id n23-v6mr13579689otj.64.1538909674287;
        Sun, 07 Oct 2018 03:54:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:abc8:: with SMTP id u191-v6ls7961943oie.11.gmail; Sun,
 07 Oct 2018 03:54:33 -0700 (PDT)
X-Google-Smtp-Source: ACcGV6240621bDmkvsMXQk8m+QJjV3kiFpdQWevmNjN+a+5m2bYYAMzNg0lIrYbc8kGOem3nMaNG
X-Received: by 2002:aca:e705:: with SMTP id e5-v6mr14713351oih.35.1538909673567;
        Sun, 07 Oct 2018 03:54:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538909673; cv=none;
        d=google.com; s=arc-20160816;
        b=feCJcGOGvzO1IrvzCWX33SWlZufBVhh4pQN37zdyQOc8mHNlpY6cMVM37lWvU3DMiY
         PUn8JZz2VOCb1P3VASyPk5G34xnjnLn8dVU0OrJGcE/x//g4SZrU5ieXT+wVuIsNcCO1
         FXfsrhDfd2EpCwqVwxzUYoILdvkdqC8OWNgKQ53O6obRwDn8gmGqBxdTbYDA7m6iTZvl
         wuTvhZrbj7Rlma0louT8SX65x3oD/QPyOCIwNybheggfq2dzUpMZfVcYebqIvBQPRUpR
         QUxaC3puVlxgtkpVvMH5tFQcOvtwSFEwPaqyEdQq8t/Pcw6NdwQo08lcOHqq7lhgMcyJ
         09VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=LWcXBhkDcsj5JWG0O5frokw3shqQsbvYAECFkP1rQsI=;
        b=BhXHueHVpmEtnrvAmmafSe2rJMsJ3VD9K4CbJAFotEZuZV0mJZ2wTb2qZBG6XcJANq
         zfBIU6WGRy4TKJkUXSG3DS/bUf4dAlRDU7SA9bBnYrE8dr8nKSRvltxq2eEnceagrHMw
         IY7+MF+4ShOHAJhTQgxH+2r/fdRb9ByEL9ziTqsHPd/Rko9DGLced48oc4wo5TrEnelL
         +vgPu9JfhsmZ1kuLfxNWds/vVKg+1uDIRIkRTxoZeQL4NnhHuVAAVb/uXnKLHfhQnV3X
         E7WH4BIMBsqbIRaQPp4eu52lj9hhw7jfCCBOybgxv45tnCcEBNGdAe3aVLsYwrN9Co5k
         nlKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r34-v6si664942otc.2.2018.10.07.03.54.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 03:54:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 088D767E8;
	Sun,  7 Oct 2018 10:54:31 +0000 (UTC)
Date: Sun, 7 Oct 2018 12:54:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: bhanu20anu@gmail.com
Cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel][PATCH v6] staging:comedi:comedi_pci.h Prefer
 a maximum 75 chars per line
Message-ID: <20181007105429.GA21468@kroah.com>
References: <20181007103716.GA27575@veda-VGN-CS3AGH-R>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181007103716.GA27575@veda-VGN-CS3AGH-R>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sun, Oct 07, 2018 at 04:07:17PM +0530, Bhanusree Pola wrote:
> @@ -41,7 +42,8 @@ void comedi_pci_driver_unregister(struct comedi_driver *comedi_driver,
>  				  struct pci_driver *pci_driver);
>  
>  /**
> - * module_comedi_pci_driver() - Helper macro for registering a comedi PCI driver
> + * module_comedi_pci_driver() - Helper macro for registering a comedi PCI
> + * driver

I do not think that kerneldoc can handle wrapped lines like this, so it
is fine to just leave this as-is.

checkpatch is just a hint, not a hard rule, sometimes it gets things
wrong.

thanks,

greg k-h

