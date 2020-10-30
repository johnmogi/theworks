angular site for portfolio store:

all1y - LAYOUT
seo 
ts
Security


strapi 
.env
[middleware]:
relic
varnish
jwt 
cookie for jwt storage
payment- tranzilla
notification mail on leads
chat (socket.io)

mdb: layout with collapsible sidebar
navbar (which works)



db plan: {strapi-mysql}

portoJohn - dbname

portfolio {collection}
workID  (pk)
workCat (fk)
workName
workDate
workDescription
workImage
workGallery

workCategories {collection}
workCatID (pk)
workCatName
workCatImage
workCatDescription

users {collection}
userID  (pk)
userName
userPassword
userVisits
userRegDate

leads {collection}
leadID  (pk)
leadName
leadPhone
leadMail
leadMessage
leadDate

codeBlog
postID  (pk)
postName
postDescription
postThumb
postImages
postDate
postCat (fk)



codeDesign
postID  (pk)
postName
postDescription
postThumb
postImages
postDate
postCat (fk)

codeBrief
postID  (pk)
postName
postDescription
postThumb
postImages
postDate
postCat (fk)

postCategories {collection}
postCatID (pk)
postCatName
postCatImage
postCatDescription
