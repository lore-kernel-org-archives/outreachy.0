X-GM-THRID: 6396883163908407296
X-Received: by 10.99.43.2 with SMTP id r2mr4126768pgr.145.1489390424086;
        Mon, 13 Mar 2017 00:33:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.225 with SMTP id n94ls3814658ioi.43.gmail; Mon, 13 Mar
 2017 00:33:43 -0700 (PDT)
X-Received: by 10.99.4.2 with SMTP id 2mr16144464pge.70.1489390423104;
        Mon, 13 Mar 2017 00:33:43 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si3013520pfb.2.2017.03.13.00.33.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 00:33:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so17228700pgc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 00:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8DFNpQTsgOrCj8W0EjgxIWWVIDFFuXPuzMRRzv9XamY=;
        b=k42q8W/c/KaQ933KR/E3nidvIHFaeXEy46jDXsQ3i7IsNF7Tg2SUVWCP/C/tMky8cy
         DUtn3qHTfcqK5e4X1theTwSreDHgoW0r86XySRXzCS78xIKYCNYFeFJ7oFrUD6lsfL4L
         7CKUMtPgShHL1eqrhqpWPkKXfQ+v7xhMN53+tUqqIzk0xQu1l9ixUxrzaish9LCwEuuH
         5VwJR3NKp/usc5s7S+HWKRkLbVF85i+iF8YQSCC98MTJwxOGtgGf4uMHJdRWVT99Ek06
         pQHVLgj94llq+WG6JRKZOrBpjbxSAzp7tSIAIkCLIpr/OuSK7QaZI++p8e1WYtUw6JEN
         beKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8DFNpQTsgOrCj8W0EjgxIWWVIDFFuXPuzMRRzv9XamY=;
        b=q6/mtLNEO8ueYglffJ9aQzsMpnD7jT1/3pWIOnobrXXG2S5sR6+l/Gn1uLpY4pUW+q
         VDydYd1Xjb+kTTw8nTSkf5uQk4O9nllC8+S4oVzhnVHbts5fVfcCEhCFgMJ24iEGXtsy
         sQF0V8SRVWv3DFj/H4/fzw9Qs+4Z4J7vzn2LjiAhzsAu2s1ooGL4gh7wney0j6wbLjeb
         LkIGd1BGOiO+miopd9qo4feGCdd6+n5GLcueuR2WV80o8/p0m/e5e8aXcaNJ1Z/o8Rw7
         xy7Uvyd9Jw9SmkPY0A0NDmCodhNyNqIoEREos4oLepRQ/1pgNKKd0lJ4baou1jzo6XgR
         7CFw==
X-Gm-Message-State: AMke39lOXSCCHdZ321O5lvIMDkVWYt6WzlZHe8up43+wRyvckAox6VGHFuf7INwANSsdqQ==
X-Received: by 10.84.192.137 with SMTP id c9mr45948708pld.17.1489390422888;
        Mon, 13 Mar 2017 00:33:42 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.222.61])
        by smtp.gmail.com with ESMTPSA id a16sm31691409pgd.62.2017.03.13.00.33.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 00:33:42 -0700 (PDT)
Date: Mon, 13 Mar 2017 13:03:10 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org
Subject: [PATCH v3 0/2] Replace mlock with private lock and remove
 unnecessary goto
Message-ID: <cover.1489389769.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch set replaces mlock with private lock for driver ad9834 and removes
unnecessary goto.

sayli karnik (2):
  staging: iio: ad9834: Use private driver lock instead of mlock
  staging: iio: ad9834: Remove unnecessary goto statement

 drivers/staging/iio/frequency/ad9834.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

-- 
2.7.4


