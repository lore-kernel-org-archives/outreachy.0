X-GM-THRID: 6397330480733093888
X-Received: by 10.107.134.1 with SMTP id i1mr10245336iod.10.1489494573790;
        Tue, 14 Mar 2017 05:29:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.53.6 with SMTP id o6ls18084912otc.47.gmail; Tue, 14 Mar
 2017 05:29:33 -0700 (PDT)
X-Received: by 10.157.21.37 with SMTP id u34mr16710895otf.40.1489494573527;
        Tue, 14 Mar 2017 05:29:33 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id r66si3616577pfb.7.2017.03.14.05.29.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 05:29:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 77so24178178pgc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 05:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xKH1yb44x8KHLKx4MIP9PKrICCCr9DXOOkif7AojBAk=;
        b=E3QcOR4BHXcTJbtKus2IdgX2aaHSzX70iunSpuhu24mKd/jo8jJMcr59n+ZkZnNwr5
         YAsbdtIy0erAS30Du5ZNAikFSHll7y2kmVunXSqMDHZS2DvwcKI9QAgYEsxLaR/7GXny
         B88JxC9Pad9/ct8nFaPJUSGGsD4ttdpFTF3M8kaFF/pcA794BUUqUE20y1CtUCwE3hmX
         z8xWu6i84VvdlL6+1kxGFe2nzm1jP0YmRVhLnCpk66QJAGUyIgYwnjeDuO3efDdGXYPy
         rcDyyE7/iyZxL8l0wj+YE3AMKNc+9Y7VO2thztiBmsoZw0OhIXScTT1eaWMxq61ONDZn
         AoRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xKH1yb44x8KHLKx4MIP9PKrICCCr9DXOOkif7AojBAk=;
        b=V+ZBr4DfJFTEH5G8EflKENAhzHFpw9RON5cR+ExkW4ZOHDnbs1CzpON4qhgI44sfh4
         IbZMd1a8Gd5zgvo1neyMuMICx2xvfrs4yptArAtSKbF6ZaVySpfdzgr9fxlP/vngBzfa
         5rquFTBnS0BoAjY10xFRIh5iSPrBR8snHKEHfqmMZruXuKfRHbf9DigioFRos2KqTO4j
         wlyflsutcHBfIWdLx4eREPI6+4iD43OPMBaPQDFSUyAivqOMyrxudcbuDalGqDqCsNDY
         ejWQWpnJ+E7CxAyEPbPalsrpwQhIrYDUaJjB1Ccu/vY9UeaOMeb2TVix89sw6/7G/3+y
         lzFw==
X-Gm-Message-State: AMke39msWlLsIG7HHJ7FN/mMdVytAmCuee5xEpHzu7ia48pD69iocnVoNj0217Kyg4HY+Q==
X-Received: by 10.99.233.17 with SMTP id i17mr43940073pgh.76.1489494573115;
        Tue, 14 Mar 2017 05:29:33 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([117.195.100.155])
        by smtp.gmail.com with ESMTPSA id m6sm38723015pgn.58.2017.03.14.05.29.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 05:29:32 -0700 (PDT)
Date: Tue, 14 Mar 2017 01:45:11 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [IIO] Help understanding iio_priv(..)
Message-ID: <20170313201511.GA12957@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi

I have been looking at the IIO task and came across this function
iio_priv(..). It is defined as-


static inline void *iio_priv(const struct iio_dev *indio_dev)
{
        return (char *)indio_dev + ALIGN(sizeof(struct iio_dev),
	IIO_ALIGN);
}

It returns a void pointer and used as struct dev_state = iio_priv(indio_dev).
Looks like it is used to store an iio device state private to the file.

Could someone help me understand what exactly is happening inside here?

Thanks
Aishwarya




