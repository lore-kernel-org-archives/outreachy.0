X-GM-THRID: 6200599277557776384
X-Received: by 10.50.119.102 with SMTP id kt6mr3094060igb.8.1443782104886;
        Fri, 02 Oct 2015 03:35:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.169 with SMTP id e41ls913544ioi.8.gmail; Fri, 02 Oct
 2015 03:35:04 -0700 (PDT)
X-Received: by 10.66.146.73 with SMTP id ta9mr12538900pab.21.1443782104419;
        Fri, 02 Oct 2015 03:35:04 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id uv4si1707999pac.0.2015.10.02.03.35.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 03:35:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id fv12so105905299pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Oct 2015 03:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=R46TESI3zn+6X2fLyqVWFcKXsVQvp7d2yrg+dwWZXRg=;
        b=ZT0iHYlzxVAepmYTxBTV/ly1j4vhaxCmvvJf2ZL8d4uhLP6xrkDzO0oQn6pTKq58kD
         WeUMl3w7IOjaRkojOtWqN2PdueP3ZqHb54j8YfKodackgote3R0MYxtB07txM3cRWZpp
         /8+hf2uMfFJEgeL+/BxQj5gsMEqhxmf06lY52sB7/oxvhgeQ0mqkdeeZYJlaEwyoaJD+
         NK/6dADN22kiGe7s/4OFl0M5DQlJYJXd0YSKD5uzxx3Nlzo/qZY9R+UF8tmPkNci2Axz
         4MhWE7/0fDsBFUER+YYoDnqQcejtl1y4zP6NSvjC86hdGBmvDMYk5H/yFbeFKZ7G1Jf8
         lxuw==
X-Received: by 10.68.192.9 with SMTP id hc9mr19060612pbc.57.1443782104261;
        Fri, 02 Oct 2015 03:35:04 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.244.224])
        by smtp.gmail.com with ESMTPSA id cn4sm11289235pbc.94.2015.10.02.03.35.02
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 02 Oct 2015 03:35:03 -0700 (PDT)
Date: Fri, 2 Oct 2015 16:04:58 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: wlan-ng: replace memcpy
 with ether_addr_copy
Message-ID: <20151002103458.GE9346@sudip-pc>
References: <1443779964-12035-1-git-send-email-ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1443779964-12035-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 02, 2015 at 12:59:24PM +0300, Ioana Ciornei wrote:
> Replace memcpy with ether_addr_copy since the output of pahole
> shows that the addresses are aligned.

Please always check your patch using checkpatch before sending. And more
important than that your patch is introducing build warnings.

checkpatch errors:
ERROR: "(foo*)" should be "(foo *)"

Build warnings:

drivers/staging/wlan-ng/p80211netdev.c: In function ‘p80211knetdev_set_mac_address’:
drivers/staging/wlan-ng/p80211netdev.c:647:2: warning: passing argument 1 of ‘ether_addr_copy’ from incompatible pointer type [enabled by default]
  ether_addr_copy(&macaddr->data.data, new_addr->sa_data);
  ^
In file included from drivers/staging/wlan-ng/p80211netdev.c:65:0:
include/linux/etherdevice.h:271:20: note: expected ‘u8 *’ but argument is of type ‘u8 (*)[6]’
 static inline void ether_addr_copy(u8 *dst, const u8 *src)
                    ^

regards
sudip

