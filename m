X-GM-THRID: 6669000631583244288
X-Received: by 2002:a81:a60c:: with SMTP id d12mr73179ywh.3.1552757061984;
        Sat, 16 Mar 2019 10:24:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4f56:: with SMTP id d83ls2536900ybb.4.gmail; Sat, 16 Mar
 2019 10:24:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyHxmoWOKVpD1f2LScZu+A+Sx1bQXWdzV5vVxtxGH/PGSAFjeowcRiLJxUx3MzItPcYYZ0j
X-Received: by 2002:a25:3841:: with SMTP id f62mr4809964yba.35.1552757061176;
        Sat, 16 Mar 2019 10:24:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552757061; cv=none;
        d=google.com; s=arc-20160816;
        b=XqgwSsHVnqrF+A1ukQmdqy412ijZv7eMThmKlKVZkAdfEWc6hAjeLffcrimMx1n7R/
         IgNVuOS6RlFAKh5Ej2woAKufb1zWmPFKO+cm1bu0/ptJfKvc8772EJdy+/yjWD5zfSk4
         ScZI15JxIZxlmP0NBxpH16oNxC+jRZBOgNo+N5UL5w57EJdR60tXvMIBOJCf0IeXMOSG
         SHAPzPnJcElPFk+Z9W9uHbGy6E3Y0PGswtho54SDcWBcPQ8bexpkdtB8pHyeKvVZxptQ
         rKYI2QaL32QQPi+nh17gmSZsxSlgDeQ4rNaUpG3cGieuBJLwJtN3x6DLRU8uQBnglvFc
         hKAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=nfY8fJiOoQJxeuDPO/Wf1G6nHDhKTKeiT0fOgkERr+s=;
        b=DfHwZYQMXms2JG9el+KRcXWqGmh1cO6dWhh2n2Hs6H7oCtH3owsTRj6JnWudSxbaxN
         DVRGivDlY/rLdJcr0ZkquIFDBvcsnhwTMLvxkgb1gDlfNgSJVvFCrr5+pPj6k6c4DCyT
         rSG+Ijomn8giCKJLJoveWfScCJTFUoZm9r3yuZ9LhZbge7h7fwe8ArpGH1ZR+9PfP+68
         ImvoiePXyuzlTUtOkeIIubIJjNNUe63b7SzPAq9b5BSrTNR0Qaeq3FvwtC3fFNgimwVt
         SINOygpQJkpKrWCvc2LmbkmL2VzAVqjgyol0Ik9mhkxqLcwXlQo479Vj8IzjR2XRaSsd
         4ESQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JkvYtBkT;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id s11si235814ywg.3.2019.03.16.10.24.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 10:24:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JkvYtBkT;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id l11so8550622pgq.10
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 10:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nfY8fJiOoQJxeuDPO/Wf1G6nHDhKTKeiT0fOgkERr+s=;
        b=JkvYtBkT/g3QpGmhT4iNs2f0+dKkf5sUfU8JdhXScXel84/ryKA2sckOAuXhhoHtuB
         CI3uDwkXghgDa1Hdm3rKrCbZlAN829dj9m8TCrhWLJXq33+5z86te3VwdeHQzsA4GwLR
         DpClQN7HMLh7oPc77AmObotVpClGUTgeynwMr1mkSLuOF0x6Wi+o7BkpW1TTe30FQjfF
         o0DRn4om9VFyfE+iCm+u+N+aCESqWsLJz8USkNsqYYpYP9g8UBG9Ju1wKRYoZoT0s+2k
         gJqlKfUlRYGViLoja918iw3k+HzWvPhB//HV1CHpz84XcoZUikbHdZm1tZshDG2giMQ2
         MCeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nfY8fJiOoQJxeuDPO/Wf1G6nHDhKTKeiT0fOgkERr+s=;
        b=jn9ts3EFZe0w3vfdVVJHrVfHDVfdpx3TeJmf8sbd6SYdeu2RcQbHH/eFfRKZN9y6lu
         Gh9QAnmozsSLE2oOI+zc0afCkbaKo6te/c0nACljVkSpv7ekEY8Qe6NrzScIeHuCZyAC
         k9vsaM58YrUIr8laqYzegvNp1oPWpn70GTnl3nCZOTpRkYg7wIgeTU+XW64Go50e4Lk2
         DllejPeMOGsFNZhbuXMwx2RVSXLeYiLlH5zC2Uvuj5zJRuTOz7QLhi2EME16/AV1BlqN
         CZKYt5TpZdsIq+7vS15P4zWp1B0kPH2GHCq7+wuQHNsipmLtadIp1SkVO9ptIuaxievy
         1iDw==
X-Gm-Message-State: APjAAAXwurpJpmdtoJuQRKmV5LMSHsaj2nZoGiH56e7f48o+zckxcyrD
	AnWyf9qCiXrOtrQjhLQrjaJjzIphnBA=
X-Received: by 2002:a62:5687:: with SMTP id h7mr10310299pfj.198.1552757059868;
        Sat, 16 Mar 2019 10:24:19 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id k27sm14387712pgb.70.2019.03.16.10.24.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 10:24:19 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 0/2] Staging: mt7621-mmc: Remove ret.cocci warnings
Date: Sat, 16 Mar 2019 22:54:02 +0530
Message-Id: <20190316172404.10694-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch series does the following:
[PATCH 1/2]:clears the ret.cocci warnings and removes unused locl
variables.
[PATCH 2/2]:Modifies the data type of the function for all possible
values.

v2:
 -dropped patch series and did all the changes in same patch as the
first patch introduced the problem.
-Commit log modified.

v3:
 PATCH[1/2] Commit log modified.
 PATCH[2/2] included to modify the data type of the function for all possible
values by maintaing the alignment of parenthesis.


Bhanusree Pola (2):
  Staging: mt7621-mmc: Fix ret.cooci warnings
  Staging: mt7621-mmc: Modify the return type for all possible values

 drivers/staging/mt7621-mmc/sd.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

-- 
2.17.1


