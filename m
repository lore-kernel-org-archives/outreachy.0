X-GM-THRID: 6525478094169440256
X-Received: by 10.99.5.142 with SMTP id 136mr2892216pgf.133.1519738443150;
        Tue, 27 Feb 2018 05:34:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.97.76 with SMTP id o12ls278307pgv.25.gmail; Tue, 27 Feb
 2018 05:34:02 -0800 (PST)
X-Google-Smtp-Source: AH8x225q8ixwrB6ndojidSnc1ep77uqFwfoqHQK5He6BM/r/sVg4XFwRo5AlzNOFSG1a/YwZ5oA+
X-Received: by 10.99.2.9 with SMTP id 9mr2970643pgc.76.1519738442072;
        Tue, 27 Feb 2018 05:34:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519738442; cv=none;
        d=google.com; s=arc-20160816;
        b=QmTblKNrWF+l5OKKk5oKuT8SCx5ICB826Xu7aHdCdh8WVoP7GqE7zalwkswE7iKP55
         btNjLcT6LIVewfkHu9qx2kVFT7w9yEhGXyxpRedcu/Pjc51rbKnMu5+rmfulz+Ynv2SF
         eGaUQgXsQjJdd0L6FUm+YjKvnNYpApba24wbhY6/P8BF0y48ltEhnN9ZE95+Pa+0Bo77
         ZmbIfZn1pE+tEhfrCBU9UUh7vCtjkqWQnLdIzZuE9V/+T2DjH1r6GIebunPSMGD6/pXQ
         LWz5sU5lbQreKe5PoYwYefAzWVykAxzz0up9CybOEx1DlSRQE4T1ZZONNDnT6mrJAbQw
         Xbrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature:arc-authentication-results;
        bh=SV65540lTVGkuDua+1NFgCRa/TAm1G6luAi8pwCHyuk=;
        b=n12N08DRS06XEYVW8HxMRbOijM4d5HndU7+AAsXQ0UFkfsfHQgP+S0exeZRBPKQtwF
         UdZ9EheTp4MPtXTNK7niQBvTDXxDwEICWtRJqZS+b3FF4P3R+eVSAs4t6x+8G/v8m1Wa
         /5GyDIGe0nwKtn1q53EOzLATmnq4qUYBahYso8PqahEYzrwqGCV/Je8gaKUVH39MHBnZ
         ZgpZ107qr43ARbwpNgytz6+aZhNXAxn7NlCmoUx7LTEdoIR99K9BP6o+6IJ9o55tlnez
         gChV3QHazK2v15d/RRHUhLR/7wOF9KTjeAAJBxDsSd3NRsXpdhUfU26a/PyzZWHzPAGs
         AqXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=aPiXMNET;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::231 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x231.google.com (mail-pl0-x231.google.com. [2607:f8b0:400e:c01::231])
        by gmr-mx.google.com with ESMTPS id g9si638345pfh.0.2018.02.27.05.34.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 05:34:01 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::231 as permitted sender) client-ip=2607:f8b0:400e:c01::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=aPiXMNET;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::231 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x231.google.com with SMTP id c11-v6so7945024plo.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 05:34:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=SV65540lTVGkuDua+1NFgCRa/TAm1G6luAi8pwCHyuk=;
        b=aPiXMNETLZ7xRij1PVxhq14BXwEKyG62VpsGDuqfWX/tJAvr649yTB2vM4Q8kbwEZi
         Lr1Tp6gY2Q8hMT+v+xbePuhukKK48+FCu8HGtqYKfHRY85z6ogUcTeUD9OCcTHq9f1np
         8rlb14IKUB8d63hX/x+rdVj+ZxU4ocjQ2kpDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=SV65540lTVGkuDua+1NFgCRa/TAm1G6luAi8pwCHyuk=;
        b=pjNu43wpwYaXG6sBAUXa2pxfdsU36Rzsm/Bb5ioaLBQ14JjPeQ86nejhQRkg38gtNz
         o6dWE0D0X9nWHBnBJT6Y+8e5q29R6jdkdkppRbZzTOvANVgZJyrA9tZwHwrWdOL+3yo7
         cULalnSkMe0Rz+pVqhCVM3JoyHQcG9MZWOZNkSziwP/87nyQGsnbOnn5ajnQPZAaJnek
         CLuVN/ORb2hXjUKDw2rg+YE3nUrUW3lszgQDFI5Dfs8dtgqFsjGJU0C2lQEDbeQZuOvB
         eSn/dYSQF/bby3Q1lxxWNi1VLM6d4LFVy/ce43c6oAJo7X4253P8/6xZr9aHU57im2iK
         VxAQ==
X-Gm-Message-State: APf1xPD75IZab1aXrAEoXCp/JhEcbrjji6F/WNjiUpXSq9W4Fn38Kqsz
	qIwpjtWivyZEplur7NBYC+cBTkwk
X-Received: by 2002:a17:902:5a0d:: with SMTP id q13-v6mr14251580pli.152.1519738441437;
        Tue, 27 Feb 2018 05:34:01 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id s86sm11596909pfi.11.2018.02.27.05.33.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Feb 2018 05:34:00 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Subject: Error Disappeared
Date: Tue, 27 Feb 2018 19:03:52 +0530
Message-Id: <1519738432-5065-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1519331234-14582-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1519331234-14582-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

I have now switched to native Linux. Everything appears to be working now. In answer to your question, I had successfully built a kernel from the source tree before trying the commands that led to this error. 
I apologise for the trouble.
Thanking you,
Nishka Dasgupta

