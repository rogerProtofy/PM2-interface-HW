import {Protofy} from 'protolib/base'
import {AdminPage, PaginatedDataSSR} from 'protolib/adminpanel/features/next'
import {Objects} from 'app/bundles/objects'
import {DataView} from 'protolib'

const Icons =  {}
const isProtected = Protofy("protected", {{protected}})
const {name, prefix} = Objects.{{_object}}.getApiOptions()

export default {
    route: Protofy("route", "{{route}}"),
    component: ({pageState, sourceUrl, initialItems, pageSession, extraData}:any) => {
        return (<AdminPage title="{{object}}" pageSession={pageSession}>
            <DataView
                integratedChat
                sourceUrl={sourceUrl}
                initialItems={initialItems}
                numColumnsForm={1}
                name="{{object}}"
                model={Objects.{{_object}} } 
                pageState={pageState}
                icons={Icons}
            />
        </AdminPage>)
    }, 
    getServerSideProps: PaginatedDataSSR(prefix + name, isProtected?Protofy("permissions", {{permissions}}):undefined)
}