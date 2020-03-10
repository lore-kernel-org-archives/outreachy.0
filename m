X-GM-THRID: 6802697836699844608
X-Received: by 2002:a6b:d609:: with SMTP id w9mr76755ioa.41.1583876515787;
        Tue, 10 Mar 2020 14:41:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:31c:: with SMTP id w28ls974580jap.1.gmail; Tue, 10
 Mar 2020 14:41:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu410qwwEJVLhsnwglXDNmtgsnYLN8i+cAopK4NwGibiweYZjdQ5Hy8TnEbHSGsoEWX36D6
X-Received: by 2002:a02:94c7:: with SMTP id x65mr193196jah.138.1583876514517;
        Tue, 10 Mar 2020 14:41:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583876514; cv=none;
        d=google.com; s=arc-20160816;
        b=I1aQDk2LQRLiYhaJYqHgoiUk77Q/XRa3BeVhh4Q+bS4YrnXI/PbwK5UUYt01UF+8US
         Txt9KA9j4H1qL1p+oosSbH32AiSM2vciy+6dHWhH/8GtXgiwgEHpsjsDylUirhv2oS8b
         434ohypJ3HEfFR0CFqmN78N3I65gNfTnkfYoagB1O1rJ29I+ChbaUSnkmU0sBIpfi8Gg
         bUVwoBIzOoU7ljYmVio6LFXx7OHw078ReA4O4AycbLtJGIfgyujeziOsL4LVgKUIJBBR
         GgdEKWy9oV2vqt45cUwiU1AXcq5TdjApu905+uWXAb6K7k7WiK9UMEr0bIjbnPAguQJd
         mjXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :date:from:dkim-signature;
        bh=EDKalawlNRD0P4bAMLRyhwzPChGUjjAR+YAw5E8ACp4=;
        b=kSJnWe1+zWgQVH0OXpqCGA54eeO02PO62nETwFQHtRKvEfPV7shTdWjelxftWctYgX
         c9BfrCy/YWKaZjDBOTSw3VNK1HZeFKlwlg9/VHSSMkS4+H6ds+HcXz4kLf4Rxu1EAAjK
         x+ziHoQZnuPf+0PcwQ/kjYNFyjxXs5eFIrntFZhBisrkc44tkHv4XnSg5FCBiaTTwkF1
         UbsL6WlDsAce2/NE/Zs4aLtMbi9aCaZosnSJhdFm0IV5DeumA3EzXa/JofgFHNLlIAOl
         98AxHVTncckkfnxZtALV79bnKHIeTvxv2BpZzX2mMHKDaFJxov/L1NeeCkQ7ykGjVN4j
         s7Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=i71FcQSJ;
       spf=neutral (google.com: 2607:f8b0:4864:20::1031 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id t64si665551iof.2.2020.03.10.14.41.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 14:41:51 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1031 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::1031;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=i71FcQSJ;
       spf=neutral (google.com: 2607:f8b0:4864:20::1031 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pj1-x1031.google.com with SMTP id a16so1004245pju.3
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 14:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=EDKalawlNRD0P4bAMLRyhwzPChGUjjAR+YAw5E8ACp4=;
        b=i71FcQSJaoYbd1ivk6YRPjuMq7N4vWaspIfLVDqP7xlqFo5zlx7IzpqYJbNgI1JsBn
         w8W5g+RFSDTD/V2nJYGT+49lYJF7AUZ6p0J5bMoIz3VZup0hRwcwsypxJMBfOJ6LjjaF
         q3zQKngtf+6xBDVeYMrYpy0XxFTGbhXA3kulN+QlBoDIb5O3S1l6Ss/nwdx9IMqVo9B6
         uLN2/aHSvbUr7xfqqUlYb+oar5uC2IB+ew1t0nUB2jopCWlchd/cYDF2bgNdFs80Tz48
         dSzcQepD0sIEz3lt1fSf6dKS+RHNfF9zXTtl0IrApSHgt3dGMBHDirb1lSzAzLEcZbA0
         4KtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=EDKalawlNRD0P4bAMLRyhwzPChGUjjAR+YAw5E8ACp4=;
        b=JpGnSk9LxbBDdfP1ami12Eb2rugXnCzDpSDLJxTPk24AP39yPqwsnnmjJ/ElRxj7OW
         kxmDpTwLSWx0hdnzl6X+aZ2833/Z4zJkx093+XYBvy9qF85B8HmnnI+BEgjqU0PaqY6i
         viCwJOBOFyj0iNw/3V8zVbtCBsEdFf+cB0nI2BxUUy/9MubCVT2eicqTRdGHTvcoc1p5
         ydDuT7DfWhYt8s3W9W/iEos8Q6OcgLcKB5CoXgZKz0hoLW32fN0+Dr11M5mz+FlSe7Df
         nfG6EZMPQLdnUDzyCbaztMz0sSaSHF9TJrPUFJJXKovd3ubzwyk431+IbE9g9TVjRh8H
         Qw5Q==
X-Gm-Message-State: ANhLgQ0fyOPHquIVjsgjmkxWhzBhj5AsFuLlpKg2FEK2bcqd38160l3N
	MWGWWnV9n2UWKfY/iHCQm1zOJvtIf2eNEw==
X-Received: by 2002:a17:902:a514:: with SMTP id s20mr22775419plq.300.1583876511005;
        Tue, 10 Mar 2020 14:41:51 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.177])
        by smtp.gmail.com with ESMTPSA id u3sm3094579pfb.36.2020.03.10.14.41.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 14:41:50 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Wed, 11 Mar 2020 03:11:45 +0530
To: outreachy-kernel@googlegroups.com
Subject: [OUTREACHY] Help regarding patch sets
Message-ID: <20200310214145.GA14139@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Sir/Ma'am,

I was guided to submit a patchset with patches in a
single driver, but I am unable to find 5-6 different clean-ups in a
single driver. I am using sparse, TODOs, coccinelle, and checkpatch.pl
to find cleanups for the same. Can I submit a patchset with changes in
multiple drivers as for moving onto small tasks I have to finish at
least 2 patchsets?

Thanks for your time!
Regards,
Kaaira Gupta

