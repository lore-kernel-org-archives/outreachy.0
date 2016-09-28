X-GM-THRID: 6335101576926986240
X-Received: by 10.157.2.142 with SMTP id 14mr4404494otl.16.1475094776595;
        Wed, 28 Sep 2016 13:32:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.168 with SMTP id 37ls322366otx.41.gmail; Wed, 28 Sep
 2016 13:32:56 -0700 (PDT)
X-Received: by 10.129.78.213 with SMTP id c204mr8682378ywb.40.1475094776274;
        Wed, 28 Sep 2016 13:32:56 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id a3si28040paw.1.2016.09.28.13.32.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 13:32:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id oz2so19966134pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 13:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=e2DCo+Wnrz6t5PS8/Qut7fsQexVIg54kaizRxVNOm5c=;
        b=AY20SVGPE97AQ+qHgBJNHIIO7DhxkX7Rc3DE7gcOnTkcTVmNVSxpZY4NnQ0VlcIW2X
         DM6BlY6D63cfstftq/E7uJKjQOXtg4sqVqy9WSsInPJmr2AyB0c4ZhE8wg50Z6p3mIEc
         hHaOJm2NZjTijplG26dCuSfwTI4JtVcqMqRIrXWsefPppO93ha655KLm2RO0imqUyokU
         XGflSGVeNEvn+WGdWTWrLpdlKMj3/uV2m8O3/LWJTJjPbCO0sV7JGemOyXUvOe1limwt
         1SL4teOF1DwJzk2XEZJXVW2cTC5EQjvAlYV/Uz7ersum3SnvFLWfXgAF4NSux3geD5wh
         JiZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=e2DCo+Wnrz6t5PS8/Qut7fsQexVIg54kaizRxVNOm5c=;
        b=QUyHJvqxqYmfAimdaQuSYlhAt6kUbKL8pLM/hx0JlJVb8gxbXDDjrob9nrocUf33+6
         cfr8BEHld40LnsvNzTEeoeR0wUMqc6y6mh3JkQHB+i36QSQLhQfn/uotbPuot9t2hqZI
         Jzf+sd4cCvUSP1vHLHJGBCLl3ikvZPbIJ/0icq03fVQKNXSPvI3Rhk7ywSk9lsWQ0C8U
         lD9Sz7jAbfGCCR4dOmfAI0bwcRX/fREmU1l7GoZmFpLdFOsXt5Jlg4D8Xqo/COKZKqlM
         ag1v4NrIe3BnfHHsJ1myuWUq6t8uXQdk+cBiqUsdiowCryOPQ+ORzgOLC7IlASYTsaF6
         pkBQ==
X-Gm-Message-State: AE9vXwPpHN+9dXpCO9+jXDqI2rQ8hk2N0Mjp2RoD3wxX3XWkaZ6rwbXmFEU8ZKcBiZKzZw==
X-Received: by 10.66.16.38 with SMTP id c6mr59940871pad.64.1475094776113;
        Wed, 28 Sep 2016 13:32:56 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id ah5sm14586838pad.30.2016.09.28.13.32.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Sep 2016 13:32:55 -0700 (PDT)
Date: Wed, 28 Sep 2016 13:32:54 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: line wrap and rebase question
Message-ID: <20160928203253.GA12265@d830.WORKGROUP>
References: <44f080fb-8ee2-4de0-8480-7b21534757ab@googlegroups.com>
 <20160927203553.GA20780@d830.WORKGROUP>
 <20160927220413.GA23877@localhost>
 <20160927222001.GA21768@d830.WORKGROUP>
 <20160928181956.GA2193@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160928181956.GA2193@localhost>
User-Agent: Mutt/1.5.23 (2014-03-12)

reply is in your new thread - Rebase/line wrap question

