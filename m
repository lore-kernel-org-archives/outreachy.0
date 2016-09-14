X-GM-THRID: 6330207690176856064
X-Received: by 10.66.41.114 with SMTP id e18mr3029112pal.37.1473875347603;
        Wed, 14 Sep 2016 10:49:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.46.207 with SMTP id w73ls1577347ota.8.gmail; Wed, 14 Sep
 2016 10:49:07 -0700 (PDT)
X-Received: by 10.13.214.83 with SMTP id y80mr2927685ywd.33.1473875347203;
        Wed, 14 Sep 2016 10:49:07 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id p193si564689ywe.6.2016.09.14.10.49.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 10:49:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id 38so759069qte.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 10:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=+YlgupgtOt5lmF5Nk8U9aFSR2t1VUv/MlEyxNJ94YPg=;
        b=pCwyYvabLq2NpZInrGWoQF/LGtlrLCprEpZlv7kmlB41vnvOq97k2IDi9rZLDZeSh+
         /ElcKM+bNSNNqzH67CWEyZ1aZZWQYa9avR98b2OflGFfcmIjFCTuna/FhbbVWyXziTj9
         1jSAMey26IE1OGo/NLuhj0TOV+n+Glx9ETGw2s10eUAqMHGalqAZhTW+1iBXiOSkncv4
         YoqRyF3KuNnPxVY95M8QqYX/jt5NSMKxwvzgqwkyeBI+RN/rKinmNVLuUrmN7SbkNQ68
         TFPSRaFrSD8HxPuk7M6XZfGLR2znd2dF7cagpSispXobQSH0Z75f66/ae7e+n6n0oCDU
         pIlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=+YlgupgtOt5lmF5Nk8U9aFSR2t1VUv/MlEyxNJ94YPg=;
        b=Tj7LmXUsUCdGzswOB5+U59wsmYQ0UcY9HGFGINjT1XJnCJ2ojRyKnTatQgx0JYx2j6
         OsEXWnex3xtgsdhsIjijpVJ6xt7p5P/Dyr9yw/50pzzbu5OrWacjZvIoY5/FYi1MlbLk
         XPAABMRghCj21eZ/DguSXEB+dCNIYbrq+O70v1PjzOvxGiKktu20z8+WGQ3tkm//h75i
         q53RFAIYrFnHmqkhoTYCmYiJemefcv0s7rBRpA5Ol9WWl07wVznrb63xrDPbDwNZz1JZ
         0ojdHE6IUq8f1XoWvgYH6kzE0AoSIU7HHCMixfaB4BGPPHZQ8hnC8/mk6NSeKtQmxe2g
         NYqQ==
X-Gm-Message-State: AE9vXwOo/wtLxdp4VY9okqB9BCazz7BBzu41LQAyZO4LyL3Hwk3ZzryoxO8dchQAWt7EoQUViXnqrxxWkCt/Dw==
X-Received: by 10.200.40.91 with SMTP id 27mr4724303qtr.46.1473875346971; Wed,
 14 Sep 2016 10:49:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.131.134 with HTTP; Wed, 14 Sep 2016 10:49:06 -0700 (PDT)
In-Reply-To: <CAK-LDbKFCGs0_uXzoK1X9E9HW8Z7xgphQVZnM39jybzb++sdnA@mail.gmail.com>
References: <20160914151712.GA9806@life-desktop> <CAK-LDbKFCGs0_uXzoK1X9E9HW8Z7xgphQVZnM39jybzb++sdnA@mail.gmail.com>
From: Anchal Jain <anchalj109@gmail.com>
Date: Wed, 14 Sep 2016 23:19:06 +0530
Message-ID: <CAAbeOSvLqFv88L7nMfKoj4Re-ih5Lox=tQis3JtboObPQsPZ=g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] drivers: bluetooth: bfusb: Line
 over 80 characters in conditional stataments
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, gustavo@padovan.org
Content-Type: multipart/alternative; boundary=001a114158687fe3ea053c7b580b

--001a114158687fe3ea053c7b580b
Content-Type: text/plain; charset=UTF-8

Thank you,

Gerg Inform me, To stay in staging directory I will keep this thing in my
mind.

On Wed, Sep 14, 2016 at 9:57 PM, Vaishali Thakkar <vthakkar1994@gmail.com>
wrote:

> On Wed, Sep 14, 2016 at 8:48 PM, Anchal Jain <anchalj109@gmail.com> wrote:
> > This patch remove the warning of checkpatch.pl Line over 80 characters.
> > to remove this warning break the conditional statements into small
> chunks.
>
> Hi,
>
> Good try. But few things to note here:
>
> 1. For the Outreachy, it is advised to send patches in the drivers/staging
> only.
> 2. Subject of this patch is too log. May be you can say something like
>     'Bluetooth: bfusb: Fix line over 80 characters'
> 3. to -> To
>
> > Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> > ---
> >  drivers/bluetooth/bfusb.c | 27 ++++++++++++++++++---------
> >  1 file changed, 18 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/bluetooth/bfusb.c b/drivers/bluetooth/bfusb.c
> > index 3bf4ec6..1c2e16d 100644
> > --- a/drivers/bluetooth/bfusb.c
> > +++ b/drivers/bluetooth/bfusb.c
> > @@ -148,7 +148,7 @@ static int bfusb_send_bulk(struct bfusb_data *data,
> struct sk_buff *skb)
> >
> >         err = usb_submit_urb(urb, GFP_ATOMIC);
> >         if (err) {
> > -               BT_ERR("%s bulk tx submit failed urb %p err %d",
> > +               BT_ERR("%s bulk tx submit failed urb %p err %d",
> >                                         data->hdev->name, urb, err);
> >                 skb_unlink(skb, &data->pending_q);
> >                 usb_free_urb(urb);
> > @@ -289,30 +289,38 @@ static inline int bfusb_recv_block(struct
> bfusb_data *data, int hdr, unsigned ch
> >                 switch (pkt_type) {
> >                 case HCI_EVENT_PKT:
> >                         if (len >= HCI_EVENT_HDR_SIZE) {
> > -                               struct hci_event_hdr *hdr = (struct
> hci_event_hdr *) buf;
> > +                               struct hci_event_hdr *hdr = (struct
> > +
> hci_event_hdr *)
> > +                                                            buf;
>
> Don't you think this looks ugly after the change?
>
> >                                 pkt_len = HCI_EVENT_HDR_SIZE + hdr->plen;
> >                         } else {
> > -                               BT_ERR("%s event block is too short",
> data->hdev->name);
> > +                               BT_ERR("%s event block is too short",
> > +                                      data->hdev->name);
> >                                 return -EILSEQ;
> >                         }
> >                         break;
> >
> >                 case HCI_ACLDATA_PKT:
> >                         if (len >= HCI_ACL_HDR_SIZE) {
> > -                               struct hci_acl_hdr *hdr = (struct
> hci_acl_hdr *) buf;
> > -                               pkt_len = HCI_ACL_HDR_SIZE +
> __le16_to_cpu(hdr->dlen);
> > +                               struct hci_acl_hdr *hdr = (struct
> hci_acl_hdr *)
> > +                                                         buf;
> > +                               pkt_len = HCI_ACL_HDR_SIZE +
> __le16_to_cpu
> > +
>  (hdr->dlen);
>
> Same comment for this change as well. Normally it is advisable to solve
> other
> checkpatch.pl errors/warnings than solving 80 characters one.
>
> >                         } else {
> > -                               BT_ERR("%s data block is too short",
> data->hdev->name);
> > +                               BT_ERR("%s data block is too short",
> > +                                      data->hdev->name);
> >                                 return -EILSEQ;
> >                         }
> >                         break;
> >
> >                 case HCI_SCODATA_PKT:
> >                         if (len >= HCI_SCO_HDR_SIZE) {
> > -                               struct hci_sco_hdr *hdr = (struct
> hci_sco_hdr *) buf;
> > +                               struct hci_sco_hdr *hdr = (struct
> hci_sco_hdr *)
> > +                                                          buf;
> >                                 pkt_len = HCI_SCO_HDR_SIZE + hdr->dlen;
> >                         } else {
> > -                               BT_ERR("%s audio block is too short",
> data->hdev->name);
> > +                               BT_ERR("%s audio block is too short",
> > +                                      data->hdev->name);
> >                                 return -EILSEQ;
> >                         }
> >                         break;
> > @@ -329,7 +337,8 @@ static inline int bfusb_recv_block(struct bfusb_data
> *data, int hdr, unsigned ch
> >                 data->reassembly = skb;
> >         } else {
> >                 if (!data->reassembly) {
> > -                       BT_ERR("%s unexpected continuation block",
> data->hdev->name);
> > +                       BT_ERR("%s unexpected continuation block",
> > +                              data->hdev->name);
> >                         return -EIO;
> >                 }
> >         }
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/20160914151712.GA9806%40life-desktop.
> > For more options, visit https://groups.google.com/d/optout.
>
>
>
> --
> Vaishali
> http://vaishalithakkar.in/
>

--001a114158687fe3ea053c7b580b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj5UaGFuayB5b3UsPGJyPjxicj48L2Rpdj5HZXJnIEluZm9ybSBt
ZSwgVG8gc3RheSBpbiBzdGFnaW5nIGRpcmVjdG9yeSBJIHdpbGwga2VlcCB0aGlzIHRoaW5nIGlu
IG15IG1pbmQuPGJyPjwvZGl2PjxkaXYgY2xhc3M9ImdtYWlsX2V4dHJhIj48YnI+PGRpdiBjbGFz
cz0iZ21haWxfcXVvdGUiPk9uIFdlZCwgU2VwIDE0LCAyMDE2IGF0IDk6NTcgUE0sIFZhaXNoYWxp
IFRoYWtrYXIgPHNwYW4gZGlyPSJsdHIiPiZsdDs8YSBocmVmPSJtYWlsdG86dnRoYWtrYXIxOTk0
QGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnZ0aGFra2FyMTk5NEBnbWFpbC5jb208L2E+Jmd0
Ozwvc3Bhbj4gd3JvdGU6PGJyPjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9
Im1hcmdpbjowIDAgMCAuOGV4O2JvcmRlci1sZWZ0OjFweCAjY2NjIHNvbGlkO3BhZGRpbmctbGVm
dDoxZXgiPjxzcGFuIGNsYXNzPSIiPk9uIFdlZCwgU2VwIDE0LCAyMDE2IGF0IDg6NDggUE0sIEFu
Y2hhbCBKYWluICZsdDs8YSBocmVmPSJtYWlsdG86YW5jaGFsajEwOUBnbWFpbC5jb20iPmFuY2hh
bGoxMDlAZ21haWwuY29tPC9hPiZndDsgd3JvdGU6PGJyPg0KJmd0OyBUaGlzIHBhdGNoIHJlbW92
ZSB0aGUgd2FybmluZyBvZiA8YSBocmVmPSJodHRwOi8vY2hlY2twYXRjaC5wbCIgcmVsPSJub3Jl
ZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+Y2hlY2twYXRjaC5wbDwvYT4gTGluZSBvdmVyIDgwIGNo
YXJhY3RlcnMuPGJyPg0KJmd0OyB0byByZW1vdmUgdGhpcyB3YXJuaW5nIGJyZWFrIHRoZSBjb25k
aXRpb25hbCBzdGF0ZW1lbnRzIGludG8gc21hbGwgY2h1bmtzLjxicj4NCjxicj4NCjwvc3Bhbj5I
aSw8YnI+DQo8YnI+DQpHb29kIHRyeS4gQnV0IGZldyB0aGluZ3MgdG8gbm90ZSBoZXJlOjxicj4N
Cjxicj4NCjEuIEZvciB0aGUgT3V0cmVhY2h5LCBpdCBpcyBhZHZpc2VkIHRvIHNlbmQgcGF0Y2hl
cyBpbiB0aGUgZHJpdmVycy9zdGFnaW5nIG9ubHkuPGJyPg0KMi4gU3ViamVjdCBvZiB0aGlzIHBh
dGNoIGlzIHRvbyBsb2cuIE1heSBiZSB5b3UgY2FuIHNheSBzb21ldGhpbmcgbGlrZTxicj4NCsKg
IMKgICYjMzk7Qmx1ZXRvb3RoOiBiZnVzYjogRml4IGxpbmUgb3ZlciA4MCBjaGFyYWN0ZXJzJiMz
OTs8YnI+DQozLiB0byAtJmd0OyBUbzxicj4NCjxzcGFuIGNsYXNzPSIiPjxicj4NCiZndDsgU2ln
bmVkLW9mZi1ieTogQW5jaGFsIEphaW4gJmx0OzxhIGhyZWY9Im1haWx0bzphbmNoYWxqMTA5QGdt
YWlsLmNvbSI+YW5jaGFsajEwOUBnbWFpbC5jb208L2E+Jmd0Ozxicj4NCiZndDsgLS0tPGJyPg0K
Jmd0O8KgIGRyaXZlcnMvYmx1ZXRvb3RoL2JmdXNiLmMgfCAyNyArKysrKysrKysrKysrKysrKyst
LS0tLS0tLS08YnI+DQomZ3Q7wqAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDkg
ZGVsZXRpb25zKC0pPGJyPg0KJmd0Ozxicj4NCiZndDsgZGlmZiAtLWdpdCBhL2RyaXZlcnMvYmx1
ZXRvb3RoL2JmdXNiLmMgYi9kcml2ZXJzL2JsdWV0b290aC9iZnVzYi5jPGJyPg0KJmd0OyBpbmRl
eCAzYmY0ZWM2Li4xYzJlMTZkIDEwMDY0NDxicj4NCiZndDsgLS0tIGEvZHJpdmVycy9ibHVldG9v
dGgvYmZ1c2IuYzxicj4NCiZndDsgKysrIGIvZHJpdmVycy9ibHVldG9vdGgvYmZ1c2IuYzxicj4N
CiZndDsgQEAgLTE0OCw3ICsxNDgsNyBAQCBzdGF0aWMgaW50IGJmdXNiX3NlbmRfYnVsayhzdHJ1
Y3QgYmZ1c2JfZGF0YSAqZGF0YSwgc3RydWN0IHNrX2J1ZmYgKnNrYik8YnI+DQomZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgZXJyID0gdXNiX3N1Ym1pdF91cmIodXJiLCBHRlBfQVRPTUlDKTs8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBpZiAoZXJyKSB7PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBCVF9FUlIoJnF1b3Q7JXMgYnVsayB0eCBzdWJtaXQgZmFpbGVkIHVyYiAlcCBl
cnIgJWQmcXVvdDssPGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBCVF9FUlIoJnF1
b3Q7JXMgYnVsayB0eCBzdWJtaXQgZmFpbGVkIHVyYiAlcCBlcnIgJWQmcXVvdDssPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgZGF0YS0mZ3Q7aGRldi0mZ3Q7bmFtZSwgdXJiLCBlcnIpOzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoHNrYl91bmxpbmsoc2tiLCAmYW1wO2RhdGEtJmd0O3BlbmRpbmdf
cSk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgdXNiX2ZyZWVfdXJiKHVyYik7
PGJyPg0KJmd0OyBAQCAtMjg5LDMwICsyODksMzggQEAgc3RhdGljIGlubGluZSBpbnQgYmZ1c2Jf
cmVjdl9ibG9jayhzdHJ1Y3QgYmZ1c2JfZGF0YSAqZGF0YSwgaW50IGhkciwgdW5zaWduZWQgY2g8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzd2l0Y2ggKHBrdF90eXBlKSB7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgY2FzZSBIQ0lfRVZFTlRfUEtUOjxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGlmIChsZW4gJmd0Oz0g
SENJX0VWRU5UX0hEUl9TSVpFKSB7PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBzdHJ1Y3QgaGNpX2V2ZW50X2hkciAqaGRyID0gKHN0cnVj
dCBoY2lfZXZlbnRfaGRyICopIGJ1Zjs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN0cnVjdCBoY2lfZXZlbnRfaGRyICpoZHIgPSAoc3Ry
dWN0PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgaGNpX2V2ZW50
X2hkciAqKTxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGJ1Zjs8
YnI+DQo8YnI+DQo8L3NwYW4+RG9uJiMzOTt0IHlvdSB0aGluayB0aGlzIGxvb2tzIHVnbHkgYWZ0
ZXIgdGhlIGNoYW5nZT88YnI+DQo8c3BhbiBjbGFzcz0iIj48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwa3RfbGVuID0gSENJX0VWRU5U
X0hEUl9TSVpFICsgaGRyLSZndDtwbGVuOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoH0gZWxzZSB7PGJyPg0KJmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBCVF9FUlIoJnF1b3Q7JXMgZXZlbnQgYmxvY2sgaXMg
dG9vIHNob3J0JnF1b3Q7LCBkYXRhLSZndDtoZGV2LSZndDtuYW1lKTs8YnI+DQomZ3Q7ICvCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoEJUX0VSUigmcXVvdDsl
cyBldmVudCBibG9jayBpcyB0b28gc2hvcnQmcXVvdDssPGJyPg0KJmd0OyArwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgZGF0YS0mZ3Q7aGRl
di0mZ3Q7bmFtZSk7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgcmV0dXJuIC1FSUxTRVE7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgfTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoGJyZWFrOzxicj4NCiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBjYXNlIEhDSV9BQ0xEQVRBX1BLVDo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAobGVuICZndDs9IEhDSV9BQ0xfSERSX1NJWkUpIHs8YnI+
DQomZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN0
cnVjdCBoY2lfYWNsX2hkciAqaGRyID0gKHN0cnVjdCBoY2lfYWNsX2hkciAqKSBidWY7PGJyPg0K
Jmd0OyAtwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwa3Rf
bGVuID0gSENJX0FDTF9IRFJfU0laRSArIF9fbGUxNl90b19jcHUoaGRyLSZndDtkbGVuKTs8YnI+
DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN0
cnVjdCBoY2lfYWNsX2hkciAqaGRyID0gKHN0cnVjdCBoY2lfYWNsX2hkciAqKTxicj4NCiZndDsg
K8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYnVmOzxicj4NCiZndDsgK8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcGt0X2xlbiA9IEhDSV9BQ0xfSERS
X1NJWkUgKyBfX2xlMTZfdG9fY3B1PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAoaGRyLSZndDtkbGVuKTs8YnI+DQo8YnI+DQo8L3NwYW4+U2FtZSBjb21t
ZW50IGZvciB0aGlzIGNoYW5nZSBhcyB3ZWxsLiBOb3JtYWxseSBpdCBpcyBhZHZpc2FibGUgdG8g
c29sdmUgb3RoZXI8YnI+DQo8YSBocmVmPSJodHRwOi8vY2hlY2twYXRjaC5wbCIgcmVsPSJub3Jl
ZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+Y2hlY2twYXRjaC5wbDwvYT4gZXJyb3JzL3dhcm5pbmdz
IHRoYW4gc29sdmluZyA4MCBjaGFyYWN0ZXJzIG9uZS48YnI+DQo8ZGl2IGNsYXNzPSJIT0VuWmIi
PjxkaXYgY2xhc3M9Img1Ij48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqB9IGVsc2Ugezxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgQlRfRVJSKCZxdW90OyVzIGRhdGEgYmxvY2sgaXMgdG9vIHNob3J0
JnF1b3Q7LCBkYXRhLSZndDtoZGV2LSZndDtuYW1lKTs8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoEJUX0VSUigmcXVvdDslcyBkYXRhIGJs
b2NrIGlzIHRvbyBzaG9ydCZxdW90Oyw8YnI+DQomZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBkYXRhLSZndDtoZGV2LSZndDtuYW1l
KTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqByZXR1cm4gLUVJTFNFUTs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqB9PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgYnJlYWs7PGJyPg0KJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGNh
c2UgSENJX1NDT0RBVEFfUEtUOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoGlmIChsZW4gJmd0Oz0gSENJX1NDT19IRFJfU0laRSkgezxicj4NCiZndDsgLcKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgc3RydWN0IGhjaV9z
Y29faGRyICpoZHIgPSAoc3RydWN0IGhjaV9zY29faGRyICopIGJ1Zjs8YnI+DQomZ3Q7ICvCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN0cnVjdCBoY2lfc2Nv
X2hkciAqaGRyID0gKHN0cnVjdCBoY2lfc2NvX2hkciAqKTxicj4NCiZndDsgK8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIGJ1Zjs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBwa3RfbGVuID0gSENJX1NDT19IRFJfU0laRSArIGhk
ci0mZ3Q7ZGxlbjs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqB9IGVsc2Ugezxicj4NCiZndDsgLcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgQlRfRVJSKCZxdW90OyVzIGF1ZGlvIGJsb2NrIGlzIHRvbyBzaG9ydCZxdW90
OywgZGF0YS0mZ3Q7aGRldi0mZ3Q7bmFtZSk7PGJyPg0KJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBCVF9FUlIoJnF1b3Q7JXMgYXVkaW8gYmxvY2sg
aXMgdG9vIHNob3J0JnF1b3Q7LDxicj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGRhdGEtJmd0O2hkZXYtJmd0O25hbWUpOzxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oHJldHVybiAtRUlMU0VROzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoH08YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBi
cmVhazs8YnI+DQomZ3Q7IEBAIC0zMjksNyArMzM3LDggQEAgc3RhdGljIGlubGluZSBpbnQgYmZ1
c2JfcmVjdl9ibG9jayhzdHJ1Y3QgYmZ1c2JfZGF0YSAqZGF0YSwgaW50IGhkciwgdW5zaWduZWQg
Y2g8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBkYXRhLSZndDtyZWFzc2VtYmx5
ID0gc2tiOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoH0gZWxzZSB7PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgaWYgKCFkYXRhLSZndDtyZWFzc2VtYmx5KSB7PGJyPg0KJmd0OyAt
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBCVF9FUlIoJnF1b3Q7JXMgdW5leHBl
Y3RlZCBjb250aW51YXRpb24gYmxvY2smcXVvdDssIGRhdGEtJmd0O2hkZXYtJmd0O25hbWUpOzxi
cj4NCiZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgQlRfRVJSKCZxdW90
OyVzIHVuZXhwZWN0ZWQgY29udGludWF0aW9uIGJsb2NrJnF1b3Q7LDxicj4NCiZndDsgK8KgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGRhdGEtJmd0O2hkZXYtJmd0
O25hbWUpOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHJl
dHVybiAtRUlPOzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqB9PGJyPg0KJmd0OyAtLTxicj4NCiZndDsgMS45LjE8YnI+DQomZ3Q7PGJy
Pg0KPC9kaXY+PC9kaXY+PHNwYW4gY2xhc3M9IkhPRW5aYiI+PGZvbnQgY29sb3I9IiM4ODg4ODgi
PiZndDsgLS08YnI+DQomZ3Q7IFlvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3Ug
YXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgJnF1b3Q7b3V0cmVhY2h5LWtlcm5l
bCZxdW90OyBncm91cC48YnI+DQomZ3Q7IFRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBh
bmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8gPGEgaHJl
Zj0ibWFpbHRvOm91dHJlYWNoeS1rZXJuZWwlMkJ1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29t
Ij5vdXRyZWFjaHkta2VybmVsK3Vuc3Vic2NyaWJlQDx3YnI+Z29vZ2xlZ3JvdXBzLmNvbTwvYT4u
PGJyPg0KJmd0OyBUbyBwb3N0IHRvIHRoaXMgZ3JvdXAsIHNlbmQgZW1haWwgdG8gPGEgaHJlZj0i
bWFpbHRvOm91dHJlYWNoeS1rZXJuZWxAZ29vZ2xlZ3JvdXBzLmNvbSI+b3V0cmVhY2h5LWtlcm5l
bEBnb29nbGVncm91cHMuPHdicj5jb208L2E+Ljxicj4NCiZndDsgVG8gdmlldyB0aGlzIGRpc2N1
c3Npb24gb24gdGhlIHdlYiB2aXNpdCA8YSBocmVmPSJodHRwczovL2dyb3Vwcy5nb29nbGUuY29t
L2QvbXNnaWQvb3V0cmVhY2h5LWtlcm5lbC8yMDE2MDkxNDE1MTcxMi5HQTk4MDYlNDBsaWZlLWRl
c2t0b3AiIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vZ3JvdXBzLmdv
b2dsZS5jb20vZC88d2JyPm1zZ2lkL291dHJlYWNoeS1rZXJuZWwvPHdicj4yMDE2MDkxNDE1MTcx
Mi5HQTk4MDYlNDBsaWZlLTx3YnI+ZGVza3RvcDwvYT4uPGJyPg0KJmd0OyBGb3IgbW9yZSBvcHRp
b25zLCB2aXNpdCA8YSBocmVmPSJodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2Qvb3B0b3V0IiBy
ZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2dyb3Vwcy5nb29nbGUuY29t
L2QvPHdicj5vcHRvdXQ8L2E+Ljxicj4NCjxicj4NCjxicj4NCjxicj4NCi0tPGJyPg0KVmFpc2hh
bGk8YnI+DQo8YSBocmVmPSJodHRwOi8vdmFpc2hhbGl0aGFra2FyLmluLyIgcmVsPSJub3JlZmVy
cmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0cDovL3ZhaXNoYWxpdGhha2thci5pbi88L2E+PGJyPg0K
PC9mb250Pjwvc3Bhbj48L2Jsb2NrcXVvdGU+PC9kaXY+PGJyPjwvZGl2Pg0K
--001a114158687fe3ea053c7b580b--

