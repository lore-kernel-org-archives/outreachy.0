X-GM-THRID: 6804511537677467648
X-Received: by 2002:a37:9b51:: with SMTP id d78mr23651419qke.65.1584298801322;
        Sun, 15 Mar 2020 12:00:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:38ad:: with SMTP id f42ls6000820qtc.9.gmail; Sun, 15 Mar
 2020 12:00:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtFK3W9DS6MytOI4EOlEOQfEH4LF/MP0phkTIcIL+i+26igEr2ECzl+Dn0bqXWtCJ+NEEAY
X-Received: by 2002:ac8:191d:: with SMTP id t29mr14960401qtj.40.1584298800145;
        Sun, 15 Mar 2020 12:00:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584298800; cv=none;
        d=google.com; s=arc-20160816;
        b=MTq9TVKa4dglcfkWX6GRKf2nCjTaIkLIQkq4enMjHI1WJktGmKfBH7nXMwigorqHmc
         16KX5DTW8qIxkygj+XQZV4uz6sPudZcCF6OZ11e8dM257yiD/l13yTkTtDAIgdvAwmLj
         tgodUjuglkXsSh80RIPJACVuxL6AsXV+gBt1B51JKxsRlVWVhZbzVVMQ6B10TUFkDbn/
         V++VybI3VEZMX544a6VrtG98x1OGP196Kt1x2IjIPT5czUZ2zqBNUlBwB1BAA6fHBJ0J
         WF0W3l7EUbrom2I/bsciFMZ/wrUf0QA3vX+ZmKQ1pmuhRJX1zmnOBWPSxIkavY+08jEE
         +sKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=wCkTWFAlc5zCtC35QGbN3xHCLK1mee0GuB9QSdWqKKU=;
        b=Vt5jlJyk46dwHl7akZCAXNV5wJiwUQyja/aUEZhe3Z5dZ5TJDFB50m9+lp44LHjjAj
         7cqd9Us71UKwZRqxjur2j6wGFO/otllbEkY9kNmxzNG06WcHNJTsQNQAJ+1lwELBuqyG
         gCD34jfjWPnM0XdKJafHD9n6cz7/jhzXdPQk//syagJDDKbwx5nLVgBOnNbkduHL40df
         YEhZkloqGzm2XdbzLeSazFk+QrUluSwVDJCPw4yJbZlH0hRy7Fcb3fz1djRyp07gcf4e
         +lemhJMnFvIgHkEZdgArYEX5MXXF2r3yzOrzYM5H/if2Pxy+VNEot43S+JDYZtURS887
         +gBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=o7jj0mEI;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Return-Path: <jevargas@seas.upenn.edu>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id g23si946793qki.4.2020.03.15.12.00.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 12:00:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=o7jj0mEI;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Received: by mail-ot1-x341.google.com with SMTP id i12so10312113otp.4
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 12:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seas-upenn-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wCkTWFAlc5zCtC35QGbN3xHCLK1mee0GuB9QSdWqKKU=;
        b=o7jj0mEIJ8Y20gy799W5idaoY/66LiQGp/0uMoUvjt3BP21cZU2n2Pq38VqJsyToZN
         cf8mfqvst1uHy5uYRg51bptMk1nU3gPKb278nnGlx4CcoFJhtnYkRxQnK+F6dD7Zkj8q
         SLELxpjyuMzqiDCod5PUudKF6FVxW7lI9ZQzPdrBxQSPcQND+GObhu7OjMn/mqssUA1D
         Om/mFujniQMr4eIdfhsb2m8khB3PYryTwjCa/nIJfwlLC+dCa+ASwb8H3yj+k3NYuabK
         nV0oKopqh4611gH1UisYkyQIThS0i1CSd6x6VwKpcGEpwC+4HeHamhi048YkPYUB1AZB
         IN8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wCkTWFAlc5zCtC35QGbN3xHCLK1mee0GuB9QSdWqKKU=;
        b=RZZQxwJGa1dJuHouub7cioJEI1noxNmgPp9+aR4QvQdAbPPV4rYem2+IkKjzEIyGOW
         6U3QMzWs+RQkUM3PG56OAI96EiiwCLq91pt9PVRVh6hjpjHq+AOsuz4M7dO0whC2cNRF
         o+9N/fxUrSqqvAP2jm7YJJtygtRcgTuxFpPqsfLhkoeNB0gkmMFPBp5NLpd49mVEEY/8
         u0qAUUTQGvj3IkvZ4tchiNERTtGB/pTfyiXq2KS9CErv06N7bH0xU8tT0RIcjAJIZQlr
         ZVMmq2mMm1HOgZwI2oTN+N4EpMmLjyHSFDomLox2EVbyPBbmVSeOHchY9TnntIIH/ns/
         zcng==
X-Gm-Message-State: ANhLgQ0pioH2qRjkiZoEpQonX47X/XxezACxrHOpOzkHtv7tA+emgO0D
	1DGqsCYUU26X0HALAWo9q/isiQ==
X-Received: by 2002:a9d:6446:: with SMTP id m6mr18933439otl.122.1584298799658;
        Sun, 15 Mar 2020 11:59:59 -0700 (PDT)
Return-Path: <jevargas@seas.upenn.edu>
Received: from evX1 ([189.172.49.121])
        by smtp.gmail.com with ESMTPSA id q6sm2162110otm.13.2020.03.15.11.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2020 11:59:59 -0700 (PDT)
Date: Sun, 15 Mar 2020 12:59:56 -0600
From: Enrique Vargas <jevargas@seas.upenn.edu>
To: Helen Koike <helen.koike@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 0/2] Staging: media: rkisp1: trim diagram in comments to 80
 chars
Message-ID: <cover.1584298430.git.jevargas@seas.upenn.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

*** BLURB HERE ***

Enrique Vargas (2):
  reduce comments width bellow 80 chars
  eliminate trailing whitespaces on comments

 drivers/staging/media/rkisp1/rkisp1-dev.c | 54 ++++++++++++++++-------
 1 file changed, 37 insertions(+), 17 deletions(-)

-- 
2.17.1


