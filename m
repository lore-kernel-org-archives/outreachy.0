X-GM-THRID: 6467009585509040128
X-Received: by 10.28.55.209 with SMTP id e200mr992766wma.0.1505729180545;
        Mon, 18 Sep 2017 03:06:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.16.197 with SMTP id 66ls806042ljq.1.gmail; Mon, 18 Sep 2017
 03:06:20 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBjMwnQckfYvfaZMEHdsoWS5lYHSR+OFvJGiMa5JyWdReIOGj4NHjY7GqbtSAVxlyIxBsHj
X-Received: by 10.25.205.75 with SMTP id d72mr761473lfg.19.1505729180062;
        Mon, 18 Sep 2017 03:06:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505729180; cv=none;
        d=google.com; s=arc-20160816;
        b=W/VADEV9245SQRVb3rAk5cvE2la7OyhD5GxbckHhmoeW/pV4yIcZ1Qy61Wn71EAIxr
         yS3ncxWzv3sLs7z1m6sJXAnd2qUN1BhfxB0w+UhXZNqwijbkfhDoNdYRBgUi0wST3PJ3
         qJrr8gpxjWkS0bNF56NWw51Hq0U8SfvCiIeu/5CeqaaewNpfiwCbkNSxzxxq5M+9/RJY
         OVLxa+HUUAaV+KmZqKhCkaWkdrPC3v7OF0q0bDs5uiLwKFTTqTjP8HrLygL12PuO2zmj
         K2dtSC2ae+xVvNyRSBmU2LMX3An75B+4jIy/c7IkXYP1+pBsZRbGsVWRC2WWSUZsY/Tj
         FYGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=m3F7MVERynbQONGJ1TxDXw3HHF9F2YXTi4nnENqIPuw=;
        b=cuAPneeAx/d63BXX2NnmIXgA8QJxchBeyavyDqxoFALOd3MHoHweetgWGSCNs25qdj
         SA0OH1n/gnN4rxF0z/wR2EaSlFDLCKZ4lrCAS8pqkKII3HsjR8MghIJ5oBar57JTJAmj
         YBj7jcQSC1a6FVqmn053G/tQtIH8ukCF7oGW6I4RQVaHSxK8S2F4+PWOwiriNkdGKsrF
         goiNT1h8CcyqZ/Tu8RK4VWUyvPW0E6C+j7pZL8eyCHGYvje3c1OaJfJFD2G/3bG7AJNr
         RMkg2i668O3xg7ENXehdQjzi33FLhDcHYwAN/G9YiorUEgxqJUKBtNeZarJvaEj7WNA8
         0veA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id p70si442997wma.1.2017.09.18.03.06.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 03:06:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 657DDBF6;
	Mon, 18 Sep 2017 10:06:18 +0000 (UTC)
Date: Mon, 18 Sep 2017 12:06:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Himanshi Jain <himshijain.hj@gmail.com>
Cc: outreachy-kernel@googlegroups.com, jic23@kernel.org, knaack.h@gmx.de,
	lars@metafoo.de, pmeerw@pmeerw.net, linux-iio@vger.kernel.org,
	daniel.baluta@gmail.com, amsfield22@gmail.com,
	Michael.Hennerich@analog.com
Subject: Re: [PATCH] staging: iio: ade7753:  replace mlock with driver
 private lock
Message-ID: <20170918100629.GD24451@kroah.com>
References: <20170918065952.GA5386@himanshi-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170918065952.GA5386@himanshi-Inspiron-5558>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Mon, Sep 18, 2017 at 12:29:52PM +0530, Himanshi Jain wrote:
> Replace driver usage of mlock with driver private lock to meet the new
> model where usage of iio_dev->mlock is being redefined as protecting
> operating mode changes(changes between BUFFER* and DIRECT modes).

This is more complex than a "normal" outreachy coding style cleanup, so
I'll leave it to the IIO developers/maintainer to review/apply it.

thanks,

greg k-h

