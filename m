X-GM-THRID: 6947995427572547584
X-Received: by 2002:a5d:6a92:: with SMTP id s18mr15544683wru.200.1617710999823;
        Tue, 06 Apr 2021 05:09:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5348:: with SMTP id t8ls6081443wrv.2.gmail; Tue, 06 Apr
 2021 05:09:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw3TXPWwhEg1KkZ12lTpsCCjhpa+J99P42jmjhLOX7lYX4vnQHao3/jnm9lDA3NoXw7SZVy
X-Received: by 2002:adf:f743:: with SMTP id z3mr34901932wrp.304.1617710998338;
        Tue, 06 Apr 2021 05:09:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617710998; cv=none;
        d=google.com; s=arc-20160816;
        b=xAH+vpHKdkSYYue6DChmQPJLiDo4U1DoZvQp95LTL8WtHUfsn5L4Vnry/D1SObBoPy
         /Z8kLAAkeOANwH1dGN5r2zayrmya7p3IBoqBCq8nxVdcLT+tDLKSxxwJXEGLfaGmlMUF
         JI4iiEqT9ZRjYLLSI77qWZz8+CyWsL4+ec+BLxN6xQdgoC/PahlFqyM8xqsdR2oHHEfS
         eCqy8RpqpLgZP0nRnEqz7MLAjHqabZRvWdDpNCMf091t1NNP6BdqGNIOemSOzFakF//a
         47wRZVmQZTtFwBYRL7AvTeq3ogoRe0uOrQAtDpaWG6M6o3tubNQmcM0vPVPF4NWBBZrl
         CYeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Eijh7opZwID4E3qzX/yTt/B8FpJzMJ+jEZ1I1aM/q6s=;
        b=S484YSneyTUdIbGNPbwjuK8IZKkpB7iiDb+VB+dECOMJIqQNNZTTHE0P3TDkpkgTby
         bTVzwLa41mhGqJ97mx1ux94RHtYHv4Mdr6Fh3Ttw36h2rfJ+YghkjwTxEHdVIGBgHphv
         cWHegcWMaV/Ofl+VdGJ2w3G7FBvNqDWK23tj6ZTPijSlwk83WtwFmA8dt8s6L7x38jz3
         XXLDV7KnhaI1+51DtBw9qeQUtoxNLlEiDq98wAbopVYLNUpQJFDON1awazU8++9/lnrM
         xxEoPyRh8NjOTM4mKO5KyxYQlYL8+SmTZBiUXi30nzQxDu3PlifoHROx3U+TZECBn0Za
         hMNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L60fOoUo;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com. [2a00:1450:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id y12si2536864wrw.3.2021.04.06.05.09.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 05:09:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22c as permitted sender) client-ip=2a00:1450:4864:20::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L60fOoUo;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x22c.google.com with SMTP id r20so16217517ljk.4
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Apr 2021 05:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=Eijh7opZwID4E3qzX/yTt/B8FpJzMJ+jEZ1I1aM/q6s=;
        b=L60fOoUoABs49nsy/jz0aOn+FQm1KND11117yXHCZXZCZXHJMCp5rqhgWZwkY2uPuj
         uTUw1jaqcD3BwAlJ41tA8YvpDuE/Qn/4xQX8PSyEnpGqqcyAbIOfo9XjKFGj3bL028RG
         iPHhu60+ZPZJsXcudSePjSpFA9Q/XbiKY2sEti6+vgmmqzfMDaqSszxMhYyFQ8fB5n37
         ZzWs9L/VGWLk08WQrYeLowymLQoLgehsSjg2W8utAZNbEmxLEcedoZHxFTO67vcDupxS
         jWaGKS4WstB9I/FhvGZACIc8OOucgLyil83YJRbHVpMMLAc3nQSOnK55anfKW2Ji/Yq/
         9BLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=Eijh7opZwID4E3qzX/yTt/B8FpJzMJ+jEZ1I1aM/q6s=;
        b=onNcPh1R0zJFp6NSzGddpcQngXJ4G+UCXpYEV1O9eu2DCpQ/7MOvPJFDTN8g6Sma2N
         4QGIvbFaDm/OkD2FJUN1Us0v8dqJYhH/13mT5UP2rqaTRZ8JoYkIVHr5IXkOizit+OxP
         sCw8lGYothzAkcccM+aLTo6IyeDOh/WzyR5JbYSUt/EeS24/cgVKXEDS0dC4P7WGwDYw
         Rwgh7mQaYjRoBt7v/WAeIJJankFpgKDfWM2e2EYAXyB1QWOWzuf5ZVjkvzraRnF9iput
         k7Q+3wwoJILYnMO/1CZkCPzU7btKaFpgsphiG1SQdfcxMhbivkBuHZ/YZnfWRh5RH+vz
         81sw==
X-Gm-Message-State: AOAM533n1BupyXfVISGvzHTi/PYhSda/+4XynCWJs8YSyS/bJO95hWMz
	H38Y+dS+4rHRL6m4gO7X96dJVdpxU5hVLA==
X-Received: by 2002:a2e:b4f6:: with SMTP id s22mr18439067ljm.328.1617710997923;
        Tue, 06 Apr 2021 05:09:57 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id x207sm191922lff.92.2021.04.06.05.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 05:09:57 -0700 (PDT)
Date: Tue, 6 Apr 2021 18:09:54 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/2] staging: rtl8712: rewrite comparisons and remove
 blank lines
Message-ID: <cover.1617710602.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset replaces NULL comparisons with boolean negation and
removes extra blank lines after an open brace.

Changes since v1:
	- more detailed description of the commit

Zhansaya Bagdauletkyzy (2):
  staging: rtl8712: Rewrite NULL comparisons
  staging: rtl8712: Remove extra blank lines

 drivers/staging/rtl8712/rtl871x_io.h   |  1 -
 drivers/staging/rtl8712/rtl871x_mlme.h |  1 -
 drivers/staging/rtl8712/rtl871x_recv.h | 11 +++++------
 drivers/staging/rtl8712/sta_info.h     |  1 -
 4 files changed, 5 insertions(+), 9 deletions(-)

-- 
2.25.1


