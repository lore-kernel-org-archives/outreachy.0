X-GM-THRID: 6331313577585016832
X-Received: by 10.107.132.106 with SMTP id g103mr1738701iod.70.1474137380786;
        Sat, 17 Sep 2016 11:36:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.17.41 with SMTP id g38ls7993149ote.34.gmail; Sat, 17 Sep
 2016 11:36:20 -0700 (PDT)
X-Received: by 10.13.194.69 with SMTP id e66mr1723665ywd.152.1474137380514;
        Sat, 17 Sep 2016 11:36:20 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id e66si2246pfk.2.2016.09.17.11.36.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 11:36:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7F8F989E;
	Sat, 17 Sep 2016 18:36:19 +0000 (UTC)
Date: Sat, 17 Sep 2016 20:36:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com, ganesh.krishna@microchip.com,
	aditya.shankar@microchip.com
Subject: Re: [PATCH] Staging: wilc1000: Remove some function prototypes
Message-ID: <20160917183623.GB30404@kroah.com>
References: <1474123795-13448-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1474123795-13448-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sat, Sep 17, 2016 at 08:19:55PM +0530, Bhumika Goyal wrote:
> This patch removes some static function prototypes as they
> were getting used only in the declaration of structure 
> wilc_netdev_ops. So, after moving the structure declaration below the 
> function definition of all these functions, the prototypes can be 
> complelety dropped. The structure is moved to an appropriate location 
> so that it is not used before its declaration.

You do two different things here, one of which is not moving a function
prototype, so your Subject is incorrect :(

Please fix this up and make it 2 patches.

thanks,

greg k-h

