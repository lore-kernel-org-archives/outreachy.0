X-GM-THRID: 6202672545102036992
X-Received: by 10.140.165.83 with SMTP id l80mr34434636qhl.14.1444195061709;
        Tue, 06 Oct 2015 22:17:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.19 with SMTP id 19ls102857qgm.67.gmail; Tue, 06 Oct
 2015 22:17:41 -0700 (PDT)
X-Received: by 10.31.44.18 with SMTP id s18mr34274562vks.6.1444195061345;
        Tue, 06 Oct 2015 22:17:41 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id zg1si4920737pbb.2.2015.10.06.22.17.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 22:17:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id hy16so9679078pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 22:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=ZttkPrik2bd1LLn753qBHfEi7VTQm8+A0bBYeASCDMI=;
        b=I1gNJBdpC8AqYlJYG9K2qtXUQ4mnOn/c+UE1lwEsF/04JJvbJAF6iVtr9g+rSffheg
         BC9cDx/GIqlfp5G3mLvo0Sk+ewDNiBF/mNB//pNcGtU8e5GpOheI5in13UrtE9iwL3CG
         MnapPnD9VqRt800P2nCHqJUuC/1G+knGqgnTqyMhJxDKBli6C8cNyooWEiJGmfTmEt7W
         IG9Epd/9RicJtO0TypSEsjTuxWxvXIBb1XDNaVsaPTlLSJ7wKtuYkhCWIs/wJY2hM9yy
         9OpPAjpPlHoJYxkZzPk0AY+epwWy5OjYbHT7RQaetGutJcKYxwp3zpiVomHje1mx08PT
         65Hg==
X-Received: by 10.66.229.67 with SMTP id so3mr52502791pac.66.1444195061121;
        Tue, 06 Oct 2015 22:17:41 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id jv5sm36751460pbc.47.2015.10.06.22.17.39
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 06 Oct 2015 22:17:40 -0700 (PDT)
Date: Wed, 7 Oct 2015 10:47:36 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 09/10] staging: iio: adc: use BIT macro
Message-ID: <20151007051736.GD4070@sudip-pc>
References: <cover.1444172065.git.ciorneiioana@gmail.com>
 <c8e2d47eeef0c65ce13a9b2a8159a92a04686e72.1444172066.git.ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c8e2d47eeef0c65ce13a9b2a8159a92a04686e72.1444172066.git.ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Oct 07, 2015 at 01:57:09AM +0300, Ioana Ciornei wrote:
> Use BIT macro instead of shifting operator in order to improve
> readability
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---

This is introducing build warnings:

drivers/staging/iio/adc/mxs-lradc.c: In function ‘mxs_lradc_complete_touch_event’:
drivers/staging/iio/adc/mxs-lradc.c:728:6: warning: large integer implicitly truncated to unsigned type [-Woverflow]
      LRADC_DELAY(2));
      ^
drivers/staging/iio/adc/mxs-lradc.c: In function ‘mxs_lradc_buffer_preenable’:
drivers/staging/iio/adc/mxs-lradc.c:1292:8: warning: large integer implicitly truncated to unsigned type [-Woverflow]
        LRADC_DELAY_KICK, LRADC_DELAY(0));
        ^
drivers/staging/iio/adc/mxs-lradc.c: In function ‘mxs_lradc_buffer_postdisable’:
drivers/staging/iio/adc/mxs-lradc.c:1311:8: warning: large integer implicitly truncated to unsigned type [-Woverflow]
        LRADC_DELAY_KICK, LRADC_DELAY(0));
        ^

regards
sudip

