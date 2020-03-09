X-GM-THRID: 6802299057078272000
X-Received: by 2002:a05:600c:410b:: with SMTP id j11mr891397wmi.86.1583783667554;
        Mon, 09 Mar 2020 12:54:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls6528945wrr.4.gmail; Mon, 09 Mar
 2020 12:54:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsS25iJa+C3mSUXcrf5YG7FgcuZ3MpLBjUfUu+tlHR+SCoOfMkW/rLxBttbq2XWzQ3ONYN2
X-Received: by 2002:adf:ee03:: with SMTP id y3mr23328789wrn.5.1583783666319;
        Mon, 09 Mar 2020 12:54:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583783666; cv=none;
        d=google.com; s=arc-20160816;
        b=dw35BM00nU6hw2hoaBtDetA/ps8EdrM9tg1JeyFKnnpqtxPNQFVPWJaH/3REP5QwNm
         zVGeXb/k6yQucdAzGEFLoYYiJMprrHcfU8KkACJbWEZXwNTfxLgD/G4pijjbOWSBYNEc
         MCIWtdTQ+wXoIbStX/1gBEVRoYano0hUbP/HcOv9M/3t6qX9fjTAl/V+Az86VLNEXn6r
         sn0k9AiquiKXGO6EjRYc4qE0dthZXqFWG1ObZF9nNCla3U6c8dj1kstNlQFD9zR2Mfcy
         3+Z9G+Lu46TgPDhtUoQjFCpnByU2+3/kR8RuYDILGdWoJf8sts8t8DmhG2iBw6PC47nW
         USxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=f/h4FZwy1WG7woVaeFvhvCAmRNmrZ4TB1E7/DTdXiqQ=;
        b=Y9LSdQtPpboN1mpmq2lH7sLHqIRPWFf9+s2mFP+y9WkZA7fsJAKd7hOvkiXAqKkJOr
         N3fe6B8ipeNq7yxsPhUPpkaXHLOWo6dcEVXJY6L0pBtT05JU9ku5ysLrlE8y+rgKPiTa
         Az4hQaHeERFsPcE+FfgUtAc0nl8W8ecrSvoqfsxcHMve2sqalEuKJyWu6VFTWMzaUCq6
         VWD6mImNlThbSTq2OQ/6YpGxgd0szlYqcQF9oFwAJfm0Q2RrvZGGZQ0ZlBcs6HX3zFmS
         x3GB5Yaw90o6OUrX2nbdawI6nxZPAk0/vcySIqNvGtxJ5BjgBwnhIvTK6k1vSuys6QhG
         UZqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=cGHjzycm;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com. [2a00:1450:4864:20::534])
        by gmr-mx.google.com with ESMTPS id d16si524587wrv.4.2020.03.09.12.54.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 12:54:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::534 as permitted sender) client-ip=2a00:1450:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=cGHjzycm;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x534.google.com with SMTP id m25so13463102edq.8
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 12:54:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=f/h4FZwy1WG7woVaeFvhvCAmRNmrZ4TB1E7/DTdXiqQ=;
        b=cGHjzycmXCUthseuaqvMs6EcXd8AWyZtvnBtx0KLn0Gk3+y/pGqgLQpKfqUouvlV7N
         bFLL3Q15AhxtOGEcJ5gG+6EXy/zGaU4SaDCJNf7vDyXK3MwzlbnVGycULaOznse7x7M+
         KmkvpXetJtSD1hvv8+bx+yq/PzFyyE3uUwXOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=f/h4FZwy1WG7woVaeFvhvCAmRNmrZ4TB1E7/DTdXiqQ=;
        b=qpb9jqsKQRSG+kQ8R25Ct2zzvygfPTw5cTDYRPjtXuNi3vBaRCsRsW2Xei8V6ZtIOI
         LkDcw1mgTqEZJkweFnqVBSlyu4dzrGl+whFe8F703W88MM2FKWOGj2bYE201YBtB5/RJ
         Fc1KVedifoXTcRcRkPrIHco/MsPV0hN880UUJWgHg2KOqcADM72TeCK2GAHPCPOWu35j
         rXeTwUjDe4HBdX+pGEMAPPxvCy4Z2tlQNg7Ch2TtCBB/1HCvnYqpJ1nF3/CwFX7kKSH2
         kzWgdSX3DoF/PZIgq+ogfwchK7Oj2vt+f+1QdEEHxucNB5RmUJYMB3Xb8pIAqK7EBfRn
         DaPg==
X-Gm-Message-State: ANhLgQ1iL2ly9/zxPIHFNdBahkuCcRsjKf4kQBJgwN0S3dNRhmmNOe84
	lrnSQRUpb1A6vFXseu+zP+XT0IUAfR7ajw==
X-Received: by 2002:a17:906:939a:: with SMTP id l26mr7435167ejx.276.1583783665695;
        Mon, 09 Mar 2020 12:54:25 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id d9sm519778ejc.79.2020.03.09.12.54.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Mar 2020 12:54:25 -0700 (PDT)
Date: Mon, 9 Mar 2020 20:54:23 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Subject: Some questions about Outreachy
Message-ID: <20200309195423.GB6565@supernova>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

I have some questions that are still unclear to me:

In wiki it said that one have to make 10 patches and 2 patchsets. Is it
10 patches plus 2 patchsets, or 10 patches 2 of them are patchsets?

Linux kernel is accepting 2 interns. Is 2 interns for all sub-projects or
2 interns in every kernel sub-project?

Thank you,
Lourdes.

