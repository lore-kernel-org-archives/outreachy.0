X-GM-THRID: 6478256385769340928
X-Received: by 10.80.167.162 with SMTP id i31mr4227845edc.9.1508336604903;
        Wed, 18 Oct 2017 07:23:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.146.172 with SMTP id k41ls1912352eda.2.gmail; Wed, 18 Oct
 2017 07:23:24 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAHpdSqx6bADu6gLpajnem8uIlOSKQ4KNn6XxDEUwCKB9Sx6IumsewwQ/msmOZaMaM0/mEp
X-Received: by 10.80.182.75 with SMTP id c11mr4219026ede.4.1508336604027;
        Wed, 18 Oct 2017 07:23:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508336603; cv=none;
        d=google.com; s=arc-20160816;
        b=Y0VJDT//mpD2yw+eQ/dn3Ekkkrg8aUn02mxGyWUm6WKYURQ5Yr+pggELtS0P6HWV3p
         xetIIdAx15cA70wcTBEokDli4jwJImqYCL3hkii6rMpR19IHFjSea4rxxxkYgj5mlN/O
         QEPw9ne6FNW/nXgD02ktBXbszI6/BvHuv7VQbQMeSjHxdRYCCiJ8rbF4XXSjspzvUkxy
         vfDBrXI2Xe9po4SmEqXYbCaTZmphgwXc0VgZWcxtN/j8t3gm2yK3nGbGpuaQM8cB9QJd
         wuiVDiVnts8XPj/MRgG0jCKh00qUejj1184DX9mcWV5ylvKHRSwx1nQ49ABxnJD6Ttlx
         54Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:arc-authentication-results;
        bh=7YUcmG0G6i+0sOqurO1BxySOLZfIGth7nBazLkuKpew=;
        b=z4Mq54szNg6VK1opLjvUUAn9jWSMEDWlCFQ8C33C44vtlSlr3GZ5BOXsU5eklkrt76
         yEp2X2KjVWRpjY4lH/140nu2YjlQAce5cp+Uj/PDrBAbQ0sC3AkDompc27mKJmlYe6Is
         OD3uRck7fTb9fs6Vm2tLA82Umnp4boDiwLAmX32hp0TGR+8GkewpBErd0zV7AkmDiL/G
         QgodVQHC2wjZZ01C7ocAnz4OL/9qu7NWlqKTMOgJUKGbrMVXaOI4uabmvD1yDgcIb5O1
         /8o/S6SDVwu6sA5sp9gEU70ioh9vD4xuLGPQNz0APrbkZkkehuYYjjBcSy0p65ikZ6W9
         7Olw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id f9si716895edm.1.2017.10.18.07.23.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 07:23:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4F14CBC5;
	Wed, 18 Oct 2017 14:23:22 +0000 (UTC)
Date: Wed, 18 Oct 2017 16:23:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: outreachy-kernel@googlegroups.com
Subject: Outreachy patches caught up on again.
Message-ID: <20171018142331.GA25981@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.1 (2017-09-22)

Hi all,

I'm now caught up on all non-IIO or drm outreachy patches (those go
through a different maintainer).

If you have not gotten an email from my patch system saying that your
patch was applied, consider it lost, and please rebase and resend it.

thanks,

greg k-h

