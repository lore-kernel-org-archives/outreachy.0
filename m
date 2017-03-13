X-GM-THRID: 6396911528982872064
X-Received: by 10.99.139.202 with SMTP id j193mr12167054pge.151.1489397028231;
        Mon, 13 Mar 2017 02:23:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.103 with SMTP id f36ls2185182otd.0.gmail; Mon, 13 Mar
 2017 02:23:47 -0700 (PDT)
X-Received: by 10.129.84.136 with SMTP id i130mr15275938ywb.54.1489397027845;
        Mon, 13 Mar 2017 02:23:47 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id g82si3019142pfb.5.2017.03.13.02.23.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 02:23:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id b5so17535337pgg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 02:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=SvnvavC3I3MLNjuMAslB/nOVInyRXdnv6bIuTp/NjZ4=;
        b=Jb+rRKy9yP+IxPfc/IL8yMg8eiaUYo/iyzp9o/RlN8uB6YUzSBKYb/uGb9ejL81avM
         uBntLwRYApmkvDDspyMK5ZKnyEWSq4rzd862hSSBXLAYfMI/TaMHreBrkCKylQrAxnAI
         UPBczbFw7/c6XYYZij+Rd/SJ2F7nZ6FhDApLr46SOyEycrH9uedyQjjlQmIfXlvu5WR9
         vCZSNxed+jX4lNUnyLRmFecGtCkDN4noArm5Zv+Kg6OjoZf+aIVTEZu5AMaSNBZpcrhH
         1sTIu7R+7ZY6kQBiNJ713a+q1lOpV4GfEVXOEAUU37PbkXBw02m6hJkxG2zydSacfZtp
         2kSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=SvnvavC3I3MLNjuMAslB/nOVInyRXdnv6bIuTp/NjZ4=;
        b=Plppk98GzLA/B8+h6rMosmmfl9uu05uQx/On+0LqTOnZtPjlvxJuNKsrYySteU0Wue
         q2BQwpFLVAIIlQOXoxvGIp8zwgqUTyLkN3l4MsoatnMLinDSTMrjsa4xBs37oGZyqvkz
         t6T8SX6mcfiW9fBLXoJ9SoctQY8hIg5LyWi4JkYZ5jlluKe4qIQ7fon2FftSeLTViUe3
         KZTMBbfBqgFcG8frbm9lkT0EejRdYrs1ngXc9mwynJK7vzoMtcIihx0yBkM6FI1HkvLZ
         F9iAYWwFsea3m/GlcFhtWsAvrSCQFUbnC305kIR22aeMbzFNA/C386GB35V6hwz64l1J
         uOmQ==
X-Gm-Message-State: AMke39kaZxoerotSZaOvGtyZc3BCqbQu+SbLDSQsPXdncNJCpkgQihTmTXEYVJ6Z1lhTnw==
X-Received: by 10.98.9.29 with SMTP id e29mr37165902pfd.101.1489397027630;
        Mon, 13 Mar 2017 02:23:47 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.132.44])
        by smtp.gmail.com with ESMTPSA id f205sm32023569pfa.35.2017.03.13.02.23.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 02:23:47 -0700 (PDT)
Message-ID: <58c66523.d638620a.5414c.30b9@mx.google.com>
X-Google-Original-Message-ID: <20170313092335.GA14358@<rvarsha016@gmail.com>>
Date: Mon, 13 Mar 2017 14:53:35 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Barry Song <21cnbao@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
Subject: [PATCH 0/2] staging: iio: adis16240: Replace mlock with private lock
 and modify comment.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

This patchset replaces mlock with private lock and modifies existing
comment in iio driver.

Varsha Rao (2):
  staging: iio: adis16240: Replace mlock with driver private lock.
  staging: iio: adis16240: Modify existing comment.

 drivers/staging/iio/accel/adis16240.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

-- 
2.9.3


