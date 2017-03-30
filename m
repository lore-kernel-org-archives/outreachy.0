X-GM-THRID: 6402648458608508928
X-Received: by 10.157.51.170 with SMTP id u42mr439599otc.150.1490899242758;
        Thu, 30 Mar 2017 11:40:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.18.163 with SMTP id 35ls6488912ios.37.gmail; Thu, 30 Mar
 2017 11:40:42 -0700 (PDT)
X-Received: by 10.36.116.193 with SMTP id o184mr525008itc.40.1490899242108;
        Thu, 30 Mar 2017 11:40:42 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id z191si365974itc.0.2017.03.30.11.40.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Mar 2017 11:40:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id o123so11831993pga.1
        for <outreachy-kernel@googlegroups.com>; Thu, 30 Mar 2017 11:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=YzBH4w1e7Nqwz3l9f6E1SVg/XkFRLzFf6dnweR9xgE8=;
        b=SPZHcg7U7RHbUVTcZbeVvQjDLpm2P6OXPJWWKNkFAV4405j62WyCCHmjr3HDv/nbo/
         AQyMpo4Jmq/o87riRSyhryZk36eYwuEIexspLmef+LwcxPPvGNRgZWngykEF93WiEgbi
         6PSbmXKAMky+VO8IbWGBRfdDO+x7ciWTXK+8Ei5+PPYl2uV2XiBIP0Fq7Lf0pFAXWny2
         PtZsVL8qTM4xv77sI3C46mr64yFF/3pOkp/7cqmNCPAhVgxMJ8aMCv25cD3exHm+ymsf
         66WNZaUegoUWRz+/c6N1lTFgWdVJyVUhVql1zbddsmMC4PkVln5Z+WBGrjIWFFchgcLu
         6mRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=YzBH4w1e7Nqwz3l9f6E1SVg/XkFRLzFf6dnweR9xgE8=;
        b=lk8D/sAMDZZhIIAuSOrZynIR5CAEdNegyytzprp+WtpfwP54M6uy7Bf3KCHKpcpcqU
         ueYq+0g0sGb2ZWER6FXOXts1866vB+UKXAAQazAeyeL3I6lTXNO+KRUyHkoPFZskac5/
         hMmFkoyLzkf8vqxatAcYejNmwODgCgDTIwpfWDvQ8u4gRuvPZeQgjxlxn7mDcq4JssJC
         ySKbqPuDA7sO5RYIzyN82rK6xcGc85i+nPizjttsMapFb7gBwj1663eH+DyXxywX5ccX
         U1hO0qqe+NeyIIQeSO3eCJ9kobw2K5yaQqlddLdclllUUyo/o2tNJD7U2v73YOTlHOpN
         8LPw==
X-Gm-Message-State: AFeK/H1pWY0bgS1I4KGJtX0I5DqNazg/acTN707JYZIsLVzY3yJWKMNaJmHgQr+Z/9GZwA==
X-Received: by 10.99.119.69 with SMTP id s66mr854880pgc.196.1490899241621;
        Thu, 30 Mar 2017 11:40:41 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 21sm5874721pfl.129.2017.03.30.11.40.40
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Mar 2017 11:40:40 -0700 (PDT)
Date: Fri, 31 Mar 2017 00:10:38 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: jic23@kernel.org
Cc: Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] iio: light: lm3533-als: constify attribute_group
 structures
Message-ID: <20170330184038.GA11591@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Check for attribute_group structures that are only stored in the
event_attrs filed of iio_info structure. As the event_attrs field of
iio_info structures is constant, so these attribute_group structures can
also be declared constant. Done using coccinelle:

@r1 disable optional_qualifier @
identifier i;
position p;
@@
static struct attribute_group i@p = {...};

@ok1@
identifier r1.i;
position p;
struct iio_info x;
@@
x.event_attrs=&i@p;

@bad@
position p!={r1.p,ok1.p};
identifier r1.i;
@@
i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct attribute_group i={...};

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
+const
struct attribute_group i;

As the attrs field of iio_info structures is also constant, so these
attribute_group structures can also be declared constant. Done manually.

File size before:
   text    data     bss     dec     hex filename
   5798    2376       0    8174    1fee drivers/iio/light/lm3533-als.o

File size after:
   text	   data	    bss	    dec	    hex	filename
   5926	   2248	      0	   8174	   1fee	drivers/iio/light/lm3533-als.o

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 v2:
   -make one more attribute_group const.
   -change the values of file size after.
   -change commit message.

 drivers/iio/light/lm3533-als.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/light/lm3533-als.c b/drivers/iio/light/lm3533-als.c
index f409c20..0443fd2 100644
--- a/drivers/iio/light/lm3533-als.c
+++ b/drivers/iio/light/lm3533-als.c
@@ -690,7 +690,7 @@ static struct attribute *lm3533_als_event_attributes[] = {
 	NULL
 };
 
-static struct attribute_group lm3533_als_event_attribute_group = {
+static const struct attribute_group lm3533_als_event_attribute_group = {
 	.attrs = lm3533_als_event_attributes
 };
 
@@ -714,7 +714,7 @@ static struct attribute *lm3533_als_attributes[] = {
 	NULL
 };
 
-static struct attribute_group lm3533_als_attribute_group = {
+static const struct attribute_group lm3533_als_attribute_group = {
 	.attrs = lm3533_als_attributes
 };
 
-- 
2.7.4


