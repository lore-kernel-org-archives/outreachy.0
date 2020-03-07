X-GM-THRID: 6801528463992815616
X-Received: by 2002:a1c:5684:: with SMTP id k126mr10937325wmb.181.1583604250352;
        Sat, 07 Mar 2020 10:04:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:82b7:: with SMTP id 52ls2019895wrc.1.gmail; Sat, 07 Mar
 2020 10:04:08 -0800 (PST)
X-Google-Smtp-Source: ADFU+vtmGhS1tKTUGVr2i7cItjHt8j96hV+X9ubxW8xTr0wc5L6KqrSPS1wQmgEa+cYNaL/R4XR1
X-Received: by 2002:a5d:628c:: with SMTP id k12mr10449529wru.237.1583604248859;
        Sat, 07 Mar 2020 10:04:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583604248; cv=none;
        d=google.com; s=arc-20160816;
        b=wuCGsJroSkcuInaTtP0OrkIub//PTayk65b9CkG2U+6rFWeJr6xjDdiWSQLGa3kleC
         FBGXfFknNd+NGLsCFKs66k6YkYU3vHVzXtiMPe3bT5oPNMxmoon3z6OhXMQPIZiPeX0t
         /MCQsx5Vqz+YUan1n71mPOjxFk43Q5VD1bVUSL0HTyE42Y2g3le5oHn3YKG6dc+mMcFZ
         soiaHiqllEQuhXHf3phd9UiQ5D+PNT8fIH/lpTA5iqDWH/k+ZNf51Ppk8GMKnUh4Nz2j
         DRLJJSUlv/8qkOeWjqIhAm7TCuVTjCP5iS/plBR8+VYRClfFgLGxb+jMTgWVGCXGyKWr
         tFog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=69ZGTjXgnMeblqE4znwQ7wWlDO9jAFIPLXhn4Bj04DQ=;
        b=dZe+J3tpyNoYPahjUdx7StmiBSz0x+Xh9C1mNpxBVrHsuKfkA5aaNyy81ii39FjbSa
         9iGzZ/+cpI/GOcOUO5d7GbMDJujLnF3FZZ0jPebu7q7Ch3eRYAFNFKME7yj28hH124m5
         E5RVUR4iWzA05df3qllpwRA7s/RUEGKROZiMKeGPq5e50DFUDRcUVY+bkAIbfCDr12I0
         kHgnbAORisI9L2KHxA8pWMrpSucXrCtRAHrEmKb7ba8qZEb3GXQ8LxaTwyTi7swWvgkr
         BuRP20CK0qgHu9xj4LXLLXvFZrzOrKTI9156Ak5apu7V3Nm8bnVdlCtwxpGNSc4G8tqM
         Dihg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=ZGnM3EEr;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id w11si291295wmk.0.2020.03.07.10.04.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2020 10:04:08 -0800 (PST)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=ZGnM3EEr;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x542.google.com with SMTP id h62so6667591edd.12
        for <outreachy-kernel@googlegroups.com>; Sat, 07 Mar 2020 10:04:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=69ZGTjXgnMeblqE4znwQ7wWlDO9jAFIPLXhn4Bj04DQ=;
        b=ZGnM3EErvmpGChkQxyQyWGK1KEXRZV9lq9dfb2GifZESHqWCXBo8sX5iCIBywoXDxV
         2246pqu5kFllTD1hTLguBo785PJulpA2di71ggKU6diy56nI7u3jEgkcVOrAPN2hZeVg
         YaspjRE3qvDzBYhNewVLrIXZHSsOY0cQCohgE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=69ZGTjXgnMeblqE4znwQ7wWlDO9jAFIPLXhn4Bj04DQ=;
        b=pFBu76UMLcwtoiHCfQNlCI+uyoGGjdOE7YD+KaB/i5uMLkrZ4xgnzrgpkpfsZ+EQuN
         TtFndcH7Pi5fhFd8XnRn8G+TPZE5w45HK6wed5+mtH3r2O6QqY+cetIoRUnocoSKtFjw
         u75gjnRvPW4E/q4xE3oJQbX+qldnLVHhEeAl0hPKKfQ5UQAsTKZSOPzrT+Q/mUQDg1fU
         5PbGV4dBEHSiRt4bJhuTSbBc4WwCFPkxIjTBnUCy5D6Sj5f+mZdnqtaU7/qP8ewpCtOo
         7OkPGQrS9ourpfdOtf8FkdBM5tFz2agTyQs4w2UquSqu6yjzX7538w+E6W6I0BG/zgY8
         SdPQ==
X-Gm-Message-State: ANhLgQ0V5m02SDqQEJr7+vub4v55NTDccUvlGDyGzwcXXc5D+DZFsdRS
	c/6gvXHw1H2PnwnPitTjYZHaK86jHW4=
X-Received: by 2002:a05:6402:1291:: with SMTP id w17mr9154639edv.180.1583604248255;
        Sat, 07 Mar 2020 10:04:08 -0800 (PST)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id e17sm2121853ejb.71.2020.03.07.10.04.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 07 Mar 2020 10:04:07 -0800 (PST)
Date: Sat, 7 Mar 2020 19:03:59 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Subject: New here
Message-ID: <20200307180359.GA24478@supernova>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Hi, I'm a new applicant for this 2020, newbie programmer too. For me is the
first time participating in a large project like this.

While reading kernelnewbies wiki, it says: 'drivers/staging contains both
drivers that are on their way into the kernel and those that are on theirway
out of the kernel.' How to know which of them are in their way out? I tried a
git grep, but maybe there is a better way to know it. Thank you!

